(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!1 #x3fe0000000000000))

(check-sat)
(exit)
