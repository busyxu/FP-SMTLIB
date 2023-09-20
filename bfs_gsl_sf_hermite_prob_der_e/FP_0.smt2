(declare-fun b_ack!56 () (_ BitVec 32))
(assert (bvslt b_ack!56 #x00000000))

(check-sat)
(exit)
