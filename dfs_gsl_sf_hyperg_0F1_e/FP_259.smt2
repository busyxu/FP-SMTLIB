(declare-fun a_ack!4886 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4886) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!4886) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
