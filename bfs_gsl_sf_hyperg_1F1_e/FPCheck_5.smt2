(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY a_ack!14 #x3fe0000000000000))

(check-sat)
(exit)
