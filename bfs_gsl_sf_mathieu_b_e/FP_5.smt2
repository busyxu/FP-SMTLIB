(declare-fun n_ack!69 () (_ BitVec 32))
(declare-fun a_ack!70 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!69 #x00000002))))
(assert (not (= #x00000000 n_ack!69)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!70) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!69 #x00000000)))

(check-sat)
(exit)
