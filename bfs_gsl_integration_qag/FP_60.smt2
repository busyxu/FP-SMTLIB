(declare-fun key_ack!1342 () (_ BitVec 32))
(declare-fun limit_ack!1341 () (_ BitVec 64))
(assert (not (bvslt key_ack!1342 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1342)))
(assert (= #x00000003 key_ack!1342))
(assert (bvult #x00000000000003e8 limit_ack!1341))

(check-sat)
(exit)
