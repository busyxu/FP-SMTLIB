(declare-fun key_ack!954 () (_ BitVec 32))
(declare-fun limit_ack!953 () (_ BitVec 64))
(assert (not (bvslt key_ack!954 #x00000001)))
(assert (bvslt #x00000006 key_ack!954))
(assert (bvult #x00000000000003e8 limit_ack!953))

(check-sat)
(exit)
