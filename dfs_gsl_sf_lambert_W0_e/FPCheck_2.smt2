(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY a_ack!4 #x3fd78b56362cef38))

(check-sat)
(exit)
