(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!12 () (_ BitVec 64))
(declare-fun a_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          ((_ to_fp 11 53) a_ack!13))
  c_ack!12))

(check-sat)
(exit)
