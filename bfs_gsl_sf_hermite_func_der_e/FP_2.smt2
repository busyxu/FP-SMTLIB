(declare-fun a_ack!40 () (_ BitVec 32))
(declare-fun b_ack!39 () (_ BitVec 32))
(assert (not (bvslt a_ack!40 #x00000000)))
(assert (not (bvslt b_ack!39 #x00000000)))
(assert (not (= #x00000000 a_ack!40)))

(check-sat)
(exit)
