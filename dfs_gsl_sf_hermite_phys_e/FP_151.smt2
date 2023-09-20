(declare-fun a_ack!1878 () (_ BitVec 32))
(assert (not (bvslt a_ack!1878 #x00000000)))
(assert (not (= #x00000000 a_ack!1878)))
(assert (= #x00000001 a_ack!1878))

(check-sat)
(exit)
