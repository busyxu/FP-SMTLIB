(declare-fun a_ack!10 () (_ BitVec 32))
(assert (not (bvslt a_ack!10 #x00000000)))
(assert (not (= #x00000000 a_ack!10)))

(check-sat)
(exit)
