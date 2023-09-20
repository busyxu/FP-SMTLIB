(declare-fun key_ack!0 () (_ BitVec 32))
(assert (not (bvslt key_ack!0 #x00000001)))

(check-sat)
(exit)
