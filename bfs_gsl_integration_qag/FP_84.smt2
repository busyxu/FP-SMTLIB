(declare-fun key_ack!1924 () (_ BitVec 32))
(declare-fun limit_ack!1923 () (_ BitVec 64))
(assert (not (bvslt key_ack!1924 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1924)))
(assert (= #x00000006 key_ack!1924))
(assert (bvult #x00000000000003e8 limit_ack!1923))

(check-sat)
(exit)
