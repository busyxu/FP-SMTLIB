(declare-fun q_ack!3 () (_ BitVec 64))
(declare-fun j_ack!4 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!3) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!4 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!4)))

(check-sat)
(exit)
