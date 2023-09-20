(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun b_ack!60 () (_ BitVec 64))
(assert (bvslt a_ack!61 #x000003e8))
(assert (not (bvslt a_ack!61 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand a_ack!61 #x00000001))))

(check-sat)
(exit)
