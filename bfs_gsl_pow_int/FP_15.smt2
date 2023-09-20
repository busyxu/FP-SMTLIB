(declare-fun n_ack!171 () (_ BitVec 32))
(declare-fun x_ack!172 () (_ BitVec 64))
(assert (bvslt n_ack!171 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 n_ack!171) #x00000001))))

(check-sat)
(exit)
