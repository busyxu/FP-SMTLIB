(declare-fun b_ack!0 () (_ BitVec 32))
(assert (bvslt b_ack!0 #x00000000))

(check-sat)
(exit)
