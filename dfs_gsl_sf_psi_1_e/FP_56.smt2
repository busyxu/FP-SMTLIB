(declare-fun a_ack!449 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!449) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!449) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
