(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!593 () (_ BitVec 64))
(declare-fun t_ack!592 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW t_ack!592 h_ack!593))

(check-sat)
(exit)
