(declare-fun xx_ack!502 () (_ BitVec 64))
(declare-fun x0_ack!503 () (_ BitVec 64))
(declare-fun x1_ack!501 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!502) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!502) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!502) ((_ to_fp 11 53) x0_ack!503)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!501)
               ((_ to_fp 11 53) x0_ack!503))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!502)
                       ((_ to_fp 11 53) x0_ack!503))
               ((_ to_fp 11 53) x0_ack!503))
       ((_ to_fp 11 53) xx_ack!502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!502)
                       ((_ to_fp 11 53) x0_ack!503)))
       ((_ to_fp 11 53) x0_ack!503)))
(assert (FPCHECK_FDIV_ACCURACY
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!501)
                  ((_ to_fp 11 53) x0_ack!503)))))

(check-sat)
(exit)
