(declare-fun b_ack!90 () (_ BitVec 32))
(declare-fun a_ack!91 () (_ BitVec 32))
(assert (not (bvslt b_ack!90 #x00000000)))
(assert (not (bvslt a_ack!91 #x00000000)))
(assert (= #x00000000 a_ack!91))
(assert (not (bvslt b_ack!90 #x00000000)))
(assert (not (= #x00000000 b_ack!90)))
(assert (= #x00000001 b_ack!90))

(check-sat)
(exit)
