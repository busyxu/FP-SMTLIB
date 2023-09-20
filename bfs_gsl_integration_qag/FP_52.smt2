(declare-fun key_ack!1148 () (_ BitVec 32))
(declare-fun limit_ack!1147 () (_ BitVec 64))
(assert (not (bvslt key_ack!1148 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1148)))
(assert (= #x00000002 key_ack!1148))
(assert (bvult #x00000000000003e8 limit_ack!1147))

(check-sat)
(exit)
