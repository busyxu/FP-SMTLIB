(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun b_ack!37 () (_ BitVec 32))
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (bvslt b_ack!37 #x00000000))

(check-sat)
(exit)
