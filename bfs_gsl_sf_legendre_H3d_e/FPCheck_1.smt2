(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!2))
  (fp.abs ((_ to_fp 11 53) b_ack!2))))

(check-sat)
(exit)
