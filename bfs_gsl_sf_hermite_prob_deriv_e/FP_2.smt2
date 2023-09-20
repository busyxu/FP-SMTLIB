(declare-fun b_ack!59 () (_ BitVec 32))
(declare-fun a_ack!60 () (_ BitVec 32))
(assert (not (bvslt b_ack!59 #x00000000)))
(assert (not (bvslt a_ack!60 #x00000000)))
(assert (bvslt b_ack!59 a_ack!60))

(check-sat)
(exit)
