(declare-fun xx_ack!713 () (_ BitVec 64))
(declare-fun x0_ack!714 () (_ BitVec 64))
(declare-fun x1_ack!712 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) x0_ack!714)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!712)
               ((_ to_fp 11 53) x0_ack!714))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!713)
                       ((_ to_fp 11 53) x0_ack!714))
               ((_ to_fp 11 53) x0_ack!714))
       ((_ to_fp 11 53) xx_ack!713)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!713)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!713)
                       ((_ to_fp 11 53) x0_ack!714)))
       ((_ to_fp 11 53) x0_ack!714)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!712)
                  ((_ to_fp 11 53) x0_ack!714)))))

(check-sat)
(exit)
