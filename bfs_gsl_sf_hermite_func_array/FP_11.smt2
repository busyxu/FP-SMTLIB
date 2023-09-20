(declare-fun a_ack!109 () (_ BitVec 32))
(assert (not (bvslt a_ack!109 #x00000000)))
(assert (not (= #x00000000 a_ack!109)))
(assert (not (= #x00000001 a_ack!109)))

(check-sat)
(exit)
