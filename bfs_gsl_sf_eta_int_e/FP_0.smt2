(declare-fun a_ack!0 () (_ BitVec 32))
(assert (bvslt #x00000064 a_ack!0))

(check-sat)
(exit)
