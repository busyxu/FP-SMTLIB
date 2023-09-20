(declare-fun a_ack!6 () (_ BitVec 32))
(declare-fun b_ack!5 () (_ BitVec 32))
(assert (not (bvsle a_ack!6 #x00000000)))
(assert (not (bvslt b_ack!5 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!6 #x00000002) b_ack!5)))
(assert (not (= #x00000000 b_ack!5)))

(check-sat)
(exit)
