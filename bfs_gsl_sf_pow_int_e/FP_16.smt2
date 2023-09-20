(declare-fun b_ack!186 () (_ BitVec 32))
(declare-fun a_ack!187 () (_ BitVec 64))
(assert (bvslt b_ack!186 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!187) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 b_ack!186) #x00000001))))

(check-sat)
(exit)
