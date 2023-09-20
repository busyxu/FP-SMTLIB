(declare-fun c_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!49 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!48) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!49 #x3fe0000000000000))

(check-sat)
(exit)
