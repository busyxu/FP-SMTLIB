(declare-fun b_ack!1532 () (_ BitVec 32))
(assert (bvslt b_ack!1532 #x00000000))

(check-sat)
(exit)
