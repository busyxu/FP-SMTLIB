(declare-fun a_ack!60 () (_ BitVec 32))
(declare-fun b_ack!58 () (_ BitVec 32))
(declare-fun c_ack!59 () (_ BitVec 64))
(assert (not (bvslt a_ack!60 #x00000000)))
(assert (not (bvslt b_ack!58 #x00000000)))
(assert (= #x00000000 a_ack!60))
(assert (not (bvslt b_ack!58 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!59) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
