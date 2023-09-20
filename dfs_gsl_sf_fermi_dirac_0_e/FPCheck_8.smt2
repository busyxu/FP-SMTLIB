(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a_ack!11))

(check-sat)
(exit)
