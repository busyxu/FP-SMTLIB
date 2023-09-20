(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun b_ack!37 () (_ BitVec 64))
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!37) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand a_ack!38 #x00000001))))

(check-sat)
(exit)
