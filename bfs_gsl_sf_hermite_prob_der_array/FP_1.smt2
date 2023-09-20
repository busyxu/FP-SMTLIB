(declare-fun b_ack!1 () (_ BitVec 32))
(declare-fun a_ack!2 () (_ BitVec 32))
(assert (not (bvslt b_ack!1 #x00000000)))
(assert (bvslt a_ack!2 #x00000000))

(check-sat)
(exit)
