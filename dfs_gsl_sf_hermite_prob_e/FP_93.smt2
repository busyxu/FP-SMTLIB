(declare-fun a_ack!1243 () (_ BitVec 32))
(assert (not (bvslt a_ack!1243 #x00000000)))
(assert (not (= #x00000000 a_ack!1243)))
(assert (= #x00000001 a_ack!1243))

(check-sat)
(exit)
