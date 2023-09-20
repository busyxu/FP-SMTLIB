(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!1 () (_ BitVec 64))
(declare-fun x0_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x0_ack!0 p0_ack!1))

(check-sat)
(exit)
