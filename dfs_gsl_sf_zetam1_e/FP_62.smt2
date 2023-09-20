(declare-fun a_ack!591 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!591) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!591) ((_ to_fp 11 53) #x402e000000000000))))

(check-sat)
(exit)
