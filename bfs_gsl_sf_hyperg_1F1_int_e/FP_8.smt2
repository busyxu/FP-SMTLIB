(declare-fun c_ack!62 () (_ BitVec 64))
(declare-fun b_ack!61 () (_ BitVec 32))
(declare-fun a_ack!63 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!63 b_ack!61)))
(assert (not (= #x00000000 b_ack!61)))
(assert (not (= #x00000000 a_ack!63)))
(assert (bvslt b_ack!61 #x00000000))

(check-sat)
(exit)
