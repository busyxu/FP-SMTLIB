(declare-fun b_ack!136 () (_ BitVec 32))
(declare-fun a_ack!137 () (_ BitVec 32))
(assert (not (bvslt b_ack!136 #x00000000)))
(assert (not (bvslt a_ack!137 #x00000000)))
(assert (not (bvslt b_ack!136 a_ack!137)))
(assert (not (bvult b_ack!136 a_ack!137)))
(assert (not (= a_ack!137 b_ack!136)))

(check-sat)
(exit)
