(declare-fun a_ack!2196 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!2196)))

(check-sat)
(exit)
