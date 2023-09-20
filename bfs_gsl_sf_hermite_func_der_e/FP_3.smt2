(declare-fun a_ack!57 () (_ BitVec 32))
(declare-fun b_ack!56 () (_ BitVec 32))
(assert (not (bvslt a_ack!57 #x00000000)))
(assert (not (bvslt b_ack!56 #x00000000)))
(assert (= #x00000000 a_ack!57))
(assert (bvslt b_ack!56 #x00000000))

(check-sat)
(exit)
