(declare-fun key_ack!197 () (_ BitVec 32))
(assert (not (bvslt key_ack!197 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!197)))
(assert (= #x00000003 key_ack!197))

(check-sat)
(exit)
