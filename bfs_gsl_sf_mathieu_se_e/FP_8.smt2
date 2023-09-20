(declare-fun n_ack!115 () (_ BitVec 32))
(declare-fun a_ack!116 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!115 #x00000002))))
(assert (not (= #x00000000 n_ack!115)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!115 #x00000000)))

(check-sat)
(exit)
