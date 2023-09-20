(declare-fun key_ack!203 () (_ BitVec 32))
(declare-fun limit_ack!202 () (_ BitVec 64))
(assert (not (bvslt key_ack!203 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!203)))
(assert (= #x00000001 key_ack!203))
(assert (bvult #x00000000000003e8 limit_ack!202))

(check-sat)
(exit)
