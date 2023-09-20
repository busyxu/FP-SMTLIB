(declare-fun b_ack!36 () (_ BitVec 32))
(assert (bvslt b_ack!36 #x00000000))

(check-sat)
(exit)
