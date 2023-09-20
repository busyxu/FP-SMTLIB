(declare-fun a_ack!0 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!0)))

(check-sat)
(exit)
