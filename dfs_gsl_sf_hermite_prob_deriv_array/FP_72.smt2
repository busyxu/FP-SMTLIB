(declare-fun b_ack!1407 () (_ BitVec 32))
(declare-fun a_ack!1408 () (_ BitVec 32))
(assert (not (bvslt b_ack!1407 #x00000000)))
(assert (not (bvslt a_ack!1408 #x00000000)))
(assert (not (= #x00000000 b_ack!1407)))
(assert (not (= #x00000001 b_ack!1407)))
(assert (= #x00000000 a_ack!1408))
(assert (not (bvslt b_ack!1407 #x00000000)))
(assert (not (= #x00000000 b_ack!1407)))
(assert (= #x00000001 b_ack!1407))

(check-sat)
(exit)
