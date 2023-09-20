(declare-fun a_ack!1966 () (_ BitVec 32))
(declare-fun b_ack!1965 () (_ BitVec 32))
(assert (not (bvslt a_ack!1966 #x00000000)))
(assert (not (bvslt b_ack!1965 #x00000000)))
(assert (= #x00000000 a_ack!1966))
(assert (bvslt b_ack!1965 #x00000000))

(check-sat)
(exit)
