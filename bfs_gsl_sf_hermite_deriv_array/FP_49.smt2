(declare-fun b_ack!396 () (_ BitVec 32))
(declare-fun a_ack!397 () (_ BitVec 32))
(assert (not (bvslt b_ack!396 #x00000000)))
(assert (not (bvslt a_ack!397 #x00000000)))
(assert (not (= #x00000000 b_ack!396)))
(assert (not (= #x00000001 b_ack!396)))
(assert (not (= #x00000000 a_ack!397)))
(assert (= #x00000001 a_ack!397))
(assert (not (bvslt b_ack!396 #x00000000)))
(assert (not (= #x00000000 b_ack!396)))
(assert (= #x00000001 b_ack!396))

(check-sat)
(exit)
