(declare-fun a_ack!9 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!9)))

(check-sat)
(exit)
