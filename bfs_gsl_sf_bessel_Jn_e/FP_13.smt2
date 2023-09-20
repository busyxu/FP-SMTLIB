(declare-fun a_ack!97 () (_ BitVec 32))
(declare-fun b_ack!96 () (_ BitVec 64))
(assert (not (bvslt a_ack!97 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!97 #x00000001)))
(assert (not (= #x00000000 a_ack!97)))

(check-sat)
(exit)
