(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!599 () (_ BitVec 64))
(declare-fun t_ack!598 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY t_ack!598 h_ack!599))

(check-sat)
(exit)
