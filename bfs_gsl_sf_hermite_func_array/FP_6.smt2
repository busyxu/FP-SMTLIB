(declare-fun a_ack!58 () (_ BitVec 32))
(assert (not (bvslt a_ack!58 #x00000000)))
(assert (not (= #x00000000 a_ack!58)))
(assert (not (= #x00000001 a_ack!58)))

(check-sat)
(exit)
