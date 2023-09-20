(declare-fun a_ack!189 () (_ BitVec 32))
(assert (not (bvslt a_ack!189 #x00000000)))
(assert (not (= #x00000000 a_ack!189)))
(assert (not (= #x00000001 a_ack!189)))
(assert (bvsle #x00000002 a_ack!189))

(check-sat)
(exit)
