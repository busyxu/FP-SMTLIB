(declare-fun a_ack!3 () (_ BitVec 32))
(declare-fun b_ack!2 () (_ BitVec 32))
(assert (not (bvslt b_ack!2 a_ack!3)))
(assert (bvslt a_ack!3 #x00000000))

(check-sat)
(exit)
