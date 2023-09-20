(declare-fun b_ack!37 () (_ BitVec 32))
(declare-fun a_ack!38 () (_ BitVec 32))
(assert (not (bvslt b_ack!37 #x00000000)))
(assert (bvslt a_ack!38 b_ack!37))

(check-sat)
(exit)
