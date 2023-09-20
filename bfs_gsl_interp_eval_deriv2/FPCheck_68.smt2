(declare-fun xx_ack!495 () (_ BitVec 64))
(declare-fun x0_ack!496 () (_ BitVec 64))
(declare-fun x1_ack!494 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x0_ack!496))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x1_ack!494))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!494)
               ((_ to_fp 11 53) x0_ack!496))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!494)
                  ((_ to_fp 11 53) x0_ack!496)))))

(check-sat)
(exit)
