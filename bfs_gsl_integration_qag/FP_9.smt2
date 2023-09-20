(declare-fun key_ack!195 () (_ BitVec 32))
(assert (not (bvslt key_ack!195 #x00000001)))
(assert (bvslt #x00000006 key_ack!195))

(check-sat)
(exit)
