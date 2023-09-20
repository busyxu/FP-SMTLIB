(declare-fun key_ack!196 () (_ BitVec 32))
(assert (not (bvslt key_ack!196 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!196)))
(assert (= #x00000002 key_ack!196))

(check-sat)
(exit)
