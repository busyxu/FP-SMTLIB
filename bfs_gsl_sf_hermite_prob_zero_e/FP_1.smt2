(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun b_ack!1 () (_ BitVec 32))
(assert (not (bvsle a_ack!2 #x00000000)))
(assert (bvslt b_ack!1 #x00000000))

(check-sat)
(exit)
