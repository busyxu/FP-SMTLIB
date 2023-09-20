(declare-fun a_ack!7 () (_ BitVec 32))
(assert (not (bvslt a_ack!7 #x00000000)))
(assert (not (= #x00000001 a_ack!7)))
(assert (not (bvsle a_ack!7 #x00000064)))

(check-sat)
(exit)
