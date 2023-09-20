(declare-fun a_ack!78 () (_ BitVec 32))
(declare-fun b_ack!77 () (_ BitVec 64))
(assert (not (bvslt a_ack!78 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!78))

(check-sat)
(exit)
