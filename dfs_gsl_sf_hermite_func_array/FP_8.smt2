(declare-fun a_ack!92 () (_ BitVec 32))
(assert (not (bvslt a_ack!92 #x00000000)))
(assert (not (= #x00000000 a_ack!92)))
(assert (not (= #x00000001 a_ack!92)))

(check-sat)
(exit)
