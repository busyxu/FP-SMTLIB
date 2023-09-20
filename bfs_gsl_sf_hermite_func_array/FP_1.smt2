(declare-fun a_ack!23 () (_ BitVec 32))
(assert (not (bvslt a_ack!23 #x00000000)))
(assert (= #x00000000 a_ack!23))

(check-sat)
(exit)
