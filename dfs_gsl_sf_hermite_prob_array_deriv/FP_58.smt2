(declare-fun b_ack!1002 () (_ BitVec 32))
(declare-fun a_ack!1003 () (_ BitVec 32))
(assert (not (bvslt b_ack!1002 #x00000000)))
(assert (not (bvslt a_ack!1003 #x00000000)))
(assert (not (= #x00000000 a_ack!1003)))

(check-sat)
(exit)
