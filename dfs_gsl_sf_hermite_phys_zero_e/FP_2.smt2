(declare-fun a_ack!4 () (_ BitVec 32))
(declare-fun b_ack!3 () (_ BitVec 32))
(assert (not (bvsle a_ack!4 #x00000000)))
(assert (not (bvslt b_ack!3 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!4 #x00000002) b_ack!3)))
(assert (not (= #x00000000 b_ack!3)))

(check-sat)
(exit)
