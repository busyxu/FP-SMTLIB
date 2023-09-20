(declare-fun a_ack!120 () (_ BitVec 32))
(assert (not (bvslt a_ack!120 #x00000000)))
(assert (not (= #x00000000 a_ack!120)))
(assert (= #x00000001 a_ack!120))

(check-sat)
(exit)
