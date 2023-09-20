(declare-fun xx_ack!490 () (_ BitVec 64))
(declare-fun x0_ack!491 () (_ BitVec 64))
(declare-fun x1_ack!489 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!490) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!490) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!490) ((_ to_fp 11 53) x0_ack!491)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!489)
               ((_ to_fp 11 53) x0_ack!491))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!490)
                       ((_ to_fp 11 53) x0_ack!491))
               ((_ to_fp 11 53) x0_ack!491))
       ((_ to_fp 11 53) xx_ack!490)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!490)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!490)
                       ((_ to_fp 11 53) x0_ack!491)))
       ((_ to_fp 11 53) x0_ack!491)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!489)
          ((_ to_fp 11 53) x0_ack!491))))

(check-sat)
(exit)
