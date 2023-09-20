(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!2278 () (_ BitVec 64))
(declare-fun t_ack!2277 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW t_ack!2277 h_ack!2278))

(check-sat)
(exit)
