(declare-fun a_ack!21 () (_ BitVec 32))
(assert (not (bvslt a_ack!21 #x00000000)))
(assert (not (= #x00000000 a_ack!21)))
(assert (= #x00000001 a_ack!21))

(check-sat)
(exit)
