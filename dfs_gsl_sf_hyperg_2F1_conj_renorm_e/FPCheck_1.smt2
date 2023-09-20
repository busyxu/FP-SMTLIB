(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!2 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW c_ack!2 #x3fe0000000000000))

(check-sat)
(exit)
