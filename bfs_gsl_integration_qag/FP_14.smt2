(declare-fun key_ack!200 () (_ BitVec 32))
(assert (not (bvslt key_ack!200 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!200)))
(assert (= #x00000006 key_ack!200))

(check-sat)
(exit)
