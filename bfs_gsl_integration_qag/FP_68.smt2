(declare-fun key_ack!1536 () (_ BitVec 32))
(declare-fun limit_ack!1535 () (_ BitVec 64))
(assert (not (bvslt key_ack!1536 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1536)))
(assert (= #x00000004 key_ack!1536))
(assert (bvult #x00000000000003e8 limit_ack!1535))

(check-sat)
(exit)
