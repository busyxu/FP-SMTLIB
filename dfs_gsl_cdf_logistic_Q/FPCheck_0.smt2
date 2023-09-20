(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun mu_ack!0 () (_ BitVec 64))
(declare-fun x_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW x_ack!1 mu_ack!0))

(check-sat)
(exit)
