(declare-fun a_ack!322 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!322) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!322) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!322) ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
