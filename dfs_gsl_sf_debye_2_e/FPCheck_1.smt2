(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (FPCHECK_FDIV_UNDERFLOW a_ack!1 #x4008000000000000))

(check-sat)
(exit)
