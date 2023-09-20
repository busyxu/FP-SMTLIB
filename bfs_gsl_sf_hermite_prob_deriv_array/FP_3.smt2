(declare-fun b_ack!5 () (_ BitVec 32))
(declare-fun a_ack!6 () (_ BitVec 32))
(assert (not (bvslt b_ack!5 #x00000000)))
(assert (not (bvslt a_ack!6 #x00000000)))
(assert (= #x00000000 b_ack!5))
(assert (bvsle #x00000001 a_ack!6))

(check-sat)
(exit)
