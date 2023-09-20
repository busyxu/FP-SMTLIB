(declare-fun a_ack!75 () (_ BitVec 32))
(declare-fun b_ack!74 () (_ BitVec 64))
(assert (bvslt a_ack!75 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!75) #x00000001))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!75))

(check-sat)
(exit)
