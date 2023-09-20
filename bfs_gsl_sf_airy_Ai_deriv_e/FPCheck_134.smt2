(declare-fun a_ack!380 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!380) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!380) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4060000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!380)
                  ((_ to_fp 11 53) a_ack!380))
          ((_ to_fp 11 53) a_ack!380))))

(check-sat)
(exit)
