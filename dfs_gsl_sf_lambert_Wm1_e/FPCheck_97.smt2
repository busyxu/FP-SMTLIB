(declare-fun a_ack!164 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!164) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!164 #x3fd78b56362cef38))

(check-sat)
(exit)
