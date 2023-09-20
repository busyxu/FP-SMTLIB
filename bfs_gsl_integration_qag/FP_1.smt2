(declare-fun key_ack!2 () (_ BitVec 32))
(declare-fun limit_ack!1 () (_ BitVec 64))
(assert (bvslt key_ack!2 #x00000001))
(assert (bvult #x00000000000003e8 limit_ack!1))

(check-sat)
(exit)
