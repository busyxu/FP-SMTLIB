(declare-fun a_ack!40 () (_ BitVec 32))
(declare-fun b_ack!39 () (_ BitVec 64))
(assert (not (bvslt a_ack!40 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!39) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!40 #x00000001)))
(assert (bvslt #x00000001 a_ack!40))

(check-sat)
(exit)
