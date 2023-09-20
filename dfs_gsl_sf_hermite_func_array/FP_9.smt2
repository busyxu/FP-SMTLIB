(declare-fun a_ack!103 () (_ BitVec 32))
(assert (not (bvslt a_ack!103 #x00000000)))
(assert (not (= #x00000000 a_ack!103)))
(assert (not (= #x00000001 a_ack!103)))

(check-sat)
(exit)
