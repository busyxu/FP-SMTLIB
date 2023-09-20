(declare-fun a_ack!78 () (_ BitVec 32))
(assert (not (bvslt a_ack!78 #x00000000)))
(assert (not (= #x00000000 a_ack!78)))
(assert (not (= #x00000001 a_ack!78)))

(check-sat)
(exit)
