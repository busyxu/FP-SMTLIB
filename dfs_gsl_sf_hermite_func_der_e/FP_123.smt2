(declare-fun a_ack!3201 () (_ BitVec 32))
(declare-fun b_ack!3200 () (_ BitVec 32))
(assert (not (bvslt a_ack!3201 #x00000000)))
(assert (not (bvslt b_ack!3200 #x00000000)))
(assert (not (= #x00000000 a_ack!3201)))
(assert (not (= #x00000001 a_ack!3201)))

(check-sat)
(exit)
