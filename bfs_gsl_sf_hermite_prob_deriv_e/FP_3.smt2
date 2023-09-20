(declare-fun b_ack!61 () (_ BitVec 32))
(declare-fun a_ack!62 () (_ BitVec 32))
(assert (not (bvslt b_ack!61 #x00000000)))
(assert (not (bvslt a_ack!62 #x00000000)))
(assert (not (bvslt b_ack!61 a_ack!62)))
(assert (bvult b_ack!61 a_ack!62))

(check-sat)
(exit)
