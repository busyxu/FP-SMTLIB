(declare-fun b_ack!482 () (_ BitVec 32))
(declare-fun a_ack!483 () (_ BitVec 32))
(assert (not (bvslt b_ack!482 #x00000000)))
(assert (not (bvslt a_ack!483 #x00000000)))
(assert (not (= #x00000000 a_ack!483)))
(assert (not (bvslt b_ack!482 a_ack!483)))
(assert (not (= b_ack!482 a_ack!483)))
(assert (= b_ack!482 (bvadd #x00000001 a_ack!483)))
(assert (bvslt #x00000000 a_ack!483))
(assert (not (bvslt #x00000001 a_ack!483)))

(check-sat)
(exit)
