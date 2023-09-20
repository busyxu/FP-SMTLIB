(declare-fun b_ack!138 () (_ BitVec 32))
(assert (bvslt b_ack!138 #x00000000))

(check-sat)
(exit)
