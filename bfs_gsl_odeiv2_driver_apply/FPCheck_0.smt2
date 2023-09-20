(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun t_ack!1 () (_ BitVec 64))
(declare-fun t1_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW t1_ack!0 t_ack!1))

(check-sat)
(exit)
