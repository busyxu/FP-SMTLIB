(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY b_ack!28 a_ack!29))

(check-sat)
(exit)
