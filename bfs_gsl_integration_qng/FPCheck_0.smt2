(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!0 a_ack!1))

(check-sat)
(exit)
