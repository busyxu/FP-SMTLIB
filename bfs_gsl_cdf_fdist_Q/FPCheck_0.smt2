(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu1_ack!0 () (_ BitVec 64))
(declare-fun nu2_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW nu2_ack!1 nu1_ack!0))

(check-sat)
(exit)
