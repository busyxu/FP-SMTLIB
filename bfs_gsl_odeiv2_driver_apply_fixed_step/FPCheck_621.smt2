(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!2274 () (_ BitVec 64))
(declare-fun t_ack!2273 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW t_ack!2273 h_ack!2274))

(check-sat)
(exit)
