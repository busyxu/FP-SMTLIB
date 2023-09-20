(declare-fun a_ack!34 () (_ BitVec 32))
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (= #x00000000 a_ack!34))

(check-sat)
(exit)
