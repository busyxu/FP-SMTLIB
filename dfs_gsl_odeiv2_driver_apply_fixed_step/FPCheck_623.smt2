(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!2280 () (_ BitVec 64))
(declare-fun t_ack!2279 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY t_ack!2279 h_ack!2280))

(check-sat)
(exit)
