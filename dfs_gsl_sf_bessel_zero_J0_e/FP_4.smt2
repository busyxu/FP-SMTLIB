(declare-fun a_ack!30 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!30)))

(check-sat)
(exit)
