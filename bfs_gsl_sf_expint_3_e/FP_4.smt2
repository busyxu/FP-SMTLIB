(declare-fun a_ack!11 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
