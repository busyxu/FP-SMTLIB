(declare-fun key_ack!198 () (_ BitVec 32))
(assert (not (bvslt key_ack!198 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!198)))
(assert (= #x00000004 key_ack!198))

(check-sat)
(exit)
