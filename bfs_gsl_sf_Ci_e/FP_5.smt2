(declare-fun a_ack!81 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!81)) ((_ to_fp 11 53) #x3f20000000000000)))

(check-sat)
(exit)
