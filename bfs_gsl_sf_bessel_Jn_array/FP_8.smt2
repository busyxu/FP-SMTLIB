(declare-fun a_ack!34 () (_ BitVec 32))
(declare-fun b_ack!33 () (_ BitVec 32))
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (bvslt b_ack!33 a_ack!34))
(assert (bvsle a_ack!34 b_ack!33))

(check-sat)
(exit)
