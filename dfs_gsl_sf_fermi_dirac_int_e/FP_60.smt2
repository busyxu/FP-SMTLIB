(declare-fun a_ack!1101 () (_ BitVec 32))
(assert (not (bvslt a_ack!1101 #xffffffff)))
(assert (not (= #xffffffff a_ack!1101)))
(assert (not (= #x00000000 a_ack!1101)))
(assert (not (= #x00000001 a_ack!1101)))
(assert (not (= #x00000002 a_ack!1101)))

(check-sat)
(exit)
