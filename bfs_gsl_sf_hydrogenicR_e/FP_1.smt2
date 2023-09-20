(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun b_ack!1 () (_ BitVec 32))
(assert (not (bvslt a_ack!2 #x00000001)))
(assert (bvslt (bvadd #xffffffff a_ack!2) b_ack!1))

(check-sat)
(exit)
