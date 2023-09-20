(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (FPCHECK_FDIV_UNDERFLOW a_ack!1 #x3ff0000000000000))

(check-sat)
(exit)
