(declare-fun b_ack!141 () (_ BitVec 32))
(declare-fun a_ack!142 () (_ BitVec 32))
(assert (not (bvslt b_ack!141 #x00000000)))
(assert (not (bvslt a_ack!142 b_ack!141)))
(assert (not (= #x00000000 b_ack!141)))

(check-sat)
(exit)
