(declare-fun b_ack!68 () (_ BitVec 32))
(assert (bvslt b_ack!68 #x00000000))

(check-sat)
(exit)
