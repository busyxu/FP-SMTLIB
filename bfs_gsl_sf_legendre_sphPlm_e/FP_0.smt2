(declare-fun b_ack!33 () (_ BitVec 32))
(assert (bvslt b_ack!33 #x00000000))

(check-sat)
(exit)
