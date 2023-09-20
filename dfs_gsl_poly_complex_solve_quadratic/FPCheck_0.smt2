(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!0 b_ack!0))

(check-sat)
(exit)
