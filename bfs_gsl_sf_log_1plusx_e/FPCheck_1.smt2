(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1)) ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!1 #xbfb999999999999a))

(check-sat)
(exit)
