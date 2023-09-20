(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY b_ack!9 #x3fe0000000000000))

(check-sat)
(exit)
