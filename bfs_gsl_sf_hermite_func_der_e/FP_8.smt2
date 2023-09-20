(declare-fun a_ack!136 () (_ BitVec 32))
(declare-fun b_ack!135 () (_ BitVec 32))
(assert (not (bvslt a_ack!136 #x00000000)))
(assert (not (bvslt b_ack!135 #x00000000)))
(assert (not (= #x00000000 a_ack!136)))
(assert (= #x00000001 a_ack!136))

(check-sat)
(exit)
