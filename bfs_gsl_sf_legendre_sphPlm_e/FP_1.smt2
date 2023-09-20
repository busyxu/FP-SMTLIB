(declare-fun b_ack!34 () (_ BitVec 32))
(declare-fun a_ack!35 () (_ BitVec 32))
(assert (not (bvslt b_ack!34 #x00000000)))
(assert (bvslt a_ack!35 b_ack!34))

(check-sat)
(exit)
