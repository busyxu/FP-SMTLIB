(declare-fun b_ack!1409 () (_ BitVec 32))
(declare-fun a_ack!1410 () (_ BitVec 32))
(assert (not (bvslt b_ack!1409 #x00000000)))
(assert (not (bvslt a_ack!1410 #x00000000)))
(assert (not (= #x00000000 b_ack!1409)))
(assert (not (= #x00000001 b_ack!1409)))
(assert (= #x00000000 a_ack!1410))
(assert (not (bvslt b_ack!1409 #x00000000)))
(assert (= #x00000000 b_ack!1409))

(check-sat)
(exit)
