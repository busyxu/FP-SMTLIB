(declare-fun key_ack!199 () (_ BitVec 32))
(assert (not (bvslt key_ack!199 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!199)))
(assert (= #x00000005 key_ack!199))

(check-sat)
(exit)
