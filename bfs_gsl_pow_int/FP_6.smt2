(declare-fun n_ack!62 () (_ BitVec 32))
(declare-fun x_ack!63 () (_ BitVec 64))
(assert (bvslt n_ack!62 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!63) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
