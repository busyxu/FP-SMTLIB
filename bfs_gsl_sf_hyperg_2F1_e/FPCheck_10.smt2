(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!29 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW b_ack!29 #x3fe0000000000000))

(check-sat)
(exit)
