(declare-fun key_ack!1730 () (_ BitVec 32))
(declare-fun limit_ack!1729 () (_ BitVec 64))
(assert (not (bvslt key_ack!1730 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1730)))
(assert (= #x00000005 key_ack!1730))
(assert (bvult #x00000000000003e8 limit_ack!1729))

(check-sat)
(exit)
