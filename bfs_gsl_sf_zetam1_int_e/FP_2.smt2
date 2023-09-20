(declare-fun a_ack!2 () (_ BitVec 32))
(assert (not (bvslt a_ack!2 #x00000000)))
(assert (not (= #x00000001 a_ack!2)))
(assert (not (bvsle a_ack!2 #x00000064)))

(check-sat)
(exit)
