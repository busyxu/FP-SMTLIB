(declare-fun a_ack!22 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!22)))

(check-sat)
(exit)
