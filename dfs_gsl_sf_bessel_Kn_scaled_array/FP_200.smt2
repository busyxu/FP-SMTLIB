(declare-fun a_ack!5356 () (_ BitVec 32))
(declare-fun b_ack!5355 () (_ BitVec 32))
(assert (not (bvslt a_ack!5356 #x00000000)))
(assert (bvslt b_ack!5355 a_ack!5356))

(check-sat)
(exit)
