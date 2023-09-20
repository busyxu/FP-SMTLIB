(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!1)))
(assert (not (bvsle #x00000000 a_ack!1)))

(check-sat)
(exit)
