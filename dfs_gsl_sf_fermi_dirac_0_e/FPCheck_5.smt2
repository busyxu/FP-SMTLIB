(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!5 #x3cb0000000000000))

(check-sat)
(exit)
