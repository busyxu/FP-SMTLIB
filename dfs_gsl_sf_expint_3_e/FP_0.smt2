(declare-fun a_ack!0 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x3ee4519884312501))))

(check-sat)
(exit)
