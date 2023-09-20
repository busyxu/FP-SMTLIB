(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x0_ack!11 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW x0_ack!11 x0_ack!11))

(check-sat)
(exit)
