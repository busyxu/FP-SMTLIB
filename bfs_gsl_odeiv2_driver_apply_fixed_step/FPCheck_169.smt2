(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!597 () (_ BitVec 64))
(declare-fun t_ack!596 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW t_ack!596 h_ack!597))

(check-sat)
(exit)
