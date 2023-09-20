(declare-fun a_ack!112 () (_ BitVec 32))
(assert (not (bvslt a_ack!112 #x00000000)))
(assert (not (= #x00000000 a_ack!112)))
(assert (not (= #x00000001 a_ack!112)))

(check-sat)
(exit)
