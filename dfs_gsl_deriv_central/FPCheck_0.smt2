(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!0 () (_ BitVec 64))
(declare-fun x_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1 h_ack!0))

(check-sat)
(exit)
