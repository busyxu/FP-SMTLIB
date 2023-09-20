(declare-fun a_ack!95 () (_ BitVec 32))
(declare-fun b_ack!94 () (_ BitVec 64))
(assert (not (bvslt a_ack!95 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!94) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand a_ack!95 #x00000001))))

(check-sat)
(exit)
