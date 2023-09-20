(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!0))
  (fp.abs ((_ to_fp 11 53) b_ack!0))))

(check-sat)
(exit)
