(declare-fun n_ack!13 () (_ BitVec 32))
(assert (bvslt n_ack!13 #x00000000))

(check-sat)
(exit)
