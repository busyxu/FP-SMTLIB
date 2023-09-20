(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!0 x_ack!0))

(check-sat)
(exit)
