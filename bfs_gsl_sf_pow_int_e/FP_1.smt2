(declare-fun b_ack!13 () (_ BitVec 32))
(assert (bvslt b_ack!13 #x00000000))

(check-sat)
(exit)
