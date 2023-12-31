(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!25)
          ((_ to_fp 11 53) a_ack!25))
  #xbe58a86a49f629d1))

(check-sat)
(exit)
