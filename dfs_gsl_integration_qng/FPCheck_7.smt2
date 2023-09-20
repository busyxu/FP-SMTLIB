(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun b_ack!26 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW b_ack!26 a_ack!27))

(check-sat)
(exit)
