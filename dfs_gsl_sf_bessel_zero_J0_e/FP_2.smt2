(declare-fun a_ack!16 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!16)))

(check-sat)
(exit)
