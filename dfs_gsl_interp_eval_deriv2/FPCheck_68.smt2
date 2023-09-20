(declare-fun xx_ack!496 () (_ BitVec 64))
(declare-fun x0_ack!497 () (_ BitVec 64))
(declare-fun x1_ack!495 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!496) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!496) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!496) ((_ to_fp 11 53) x0_ack!497)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!495)
               ((_ to_fp 11 53) x0_ack!497))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!496)
                       ((_ to_fp 11 53) x0_ack!497))
               ((_ to_fp 11 53) x0_ack!497))
       ((_ to_fp 11 53) xx_ack!496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!496)
                       ((_ to_fp 11 53) x0_ack!497)))
       ((_ to_fp 11 53) x0_ack!497)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!495)
                  ((_ to_fp 11 53) x0_ack!497)))))

(check-sat)
(exit)
