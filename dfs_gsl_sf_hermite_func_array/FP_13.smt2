(declare-fun a_ack!143 () (_ BitVec 32))
(assert (not (bvslt a_ack!143 #x00000000)))
(assert (not (= #x00000000 a_ack!143)))
(assert (not (= #x00000001 a_ack!143)))

(check-sat)
(exit)
