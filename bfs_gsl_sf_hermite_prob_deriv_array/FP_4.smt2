(declare-fun b_ack!7 () (_ BitVec 32))
(declare-fun a_ack!8 () (_ BitVec 32))
(assert (not (bvslt b_ack!7 #x00000000)))
(assert (not (bvslt a_ack!8 #x00000000)))
(assert (not (= #x00000000 b_ack!7)))
(assert (= #x00000001 b_ack!7))

(check-sat)
(exit)
