(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!36 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY c_ack!36 #x3fe0000000000000))

(check-sat)
(exit)
