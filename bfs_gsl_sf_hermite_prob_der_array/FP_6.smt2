(declare-fun b_ack!11 () (_ BitVec 32))
(declare-fun a_ack!12 () (_ BitVec 32))
(assert (not (bvslt b_ack!11 #x00000000)))
(assert (not (bvslt a_ack!12 #x00000000)))
(assert (not (= #x00000000 b_ack!11)))
(assert (not (= #x00000001 b_ack!11)))
(assert (= #x00000000 a_ack!12))
(assert (bvslt b_ack!11 #x00000000))

(check-sat)
(exit)
