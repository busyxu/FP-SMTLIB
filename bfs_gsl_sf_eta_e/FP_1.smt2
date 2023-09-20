(declare-fun a_ack!11 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4059000000000000)))

(check-sat)
(exit)
