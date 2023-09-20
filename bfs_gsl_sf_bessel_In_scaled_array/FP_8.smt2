(declare-fun a_ack!39 () (_ BitVec 32))
(declare-fun b_ack!38 () (_ BitVec 32))
(assert (not (bvslt b_ack!38 a_ack!39)))
(assert (bvslt a_ack!39 #x00000000))
(assert (bvsle #x00000000 (bvsub b_ack!38 a_ack!39)))
(assert (bvsle #x00000001 (bvsub b_ack!38 a_ack!39)))

(check-sat)
(exit)
