(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW b_ack!5 #x3fe0000000000000))

(check-sat)
(exit)
