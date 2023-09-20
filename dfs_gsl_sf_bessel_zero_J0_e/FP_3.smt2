(declare-fun a_ack!24 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!24)))

(check-sat)
(exit)
