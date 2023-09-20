(declare-fun b_ack!57 () (_ BitVec 32))
(declare-fun a_ack!58 () (_ BitVec 32))
(assert (not (bvslt b_ack!57 #x00000000)))
(assert (bvslt a_ack!58 #x00000000))

(check-sat)
(exit)
