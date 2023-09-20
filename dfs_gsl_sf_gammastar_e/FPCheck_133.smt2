(declare-fun a_ack!202 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!202) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!202) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!202 #x3fe0000000000000))

(check-sat)
(exit)
