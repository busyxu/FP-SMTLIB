(declare-fun b_ack!69 () (_ BitVec 32))
(declare-fun a_ack!70 () (_ BitVec 32))
(assert (not (bvslt b_ack!69 #x00000000)))
(assert (bvslt a_ack!70 #x00000000))

(check-sat)
(exit)
