(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW c_ack!10 #x3fe0000000000000))

(check-sat)
(exit)
