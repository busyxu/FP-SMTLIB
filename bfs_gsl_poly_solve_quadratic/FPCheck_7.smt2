(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!25 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          ((_ to_fp 11 53) a_ack!26))
  c_ack!25))

(check-sat)
(exit)
