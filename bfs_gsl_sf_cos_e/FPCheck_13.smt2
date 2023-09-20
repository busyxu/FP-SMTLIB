(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!25)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!25)
                  ((_ to_fp 11 53) a_ack!25))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!25)
                  ((_ to_fp 11 53) a_ack!25)))
  #x4028000000000000))

(check-sat)
(exit)
