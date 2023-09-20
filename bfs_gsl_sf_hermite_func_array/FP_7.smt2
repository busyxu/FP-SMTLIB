(declare-fun a_ack!69 () (_ BitVec 32))
(assert (not (bvslt a_ack!69 #x00000000)))
(assert (not (= #x00000000 a_ack!69)))
(assert (not (= #x00000001 a_ack!69)))

(check-sat)
(exit)
