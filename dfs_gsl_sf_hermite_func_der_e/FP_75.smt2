(declare-fun a_ack!1985 () (_ BitVec 32))
(declare-fun b_ack!1984 () (_ BitVec 32))
(assert (not (bvslt a_ack!1985 #x00000000)))
(assert (not (bvslt b_ack!1984 #x00000000)))
(assert (not (= #x00000000 a_ack!1985)))
(assert (= #x00000001 a_ack!1985))

(check-sat)
(exit)
