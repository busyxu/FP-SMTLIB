(declare-fun a_ack!153 () (_ BitVec 32))
(declare-fun b_ack!152 () (_ BitVec 64))
(assert (bvslt a_ack!153 #x000003e8))
(assert (not (bvslt a_ack!153 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!152) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!153))

(check-sat)
(exit)
