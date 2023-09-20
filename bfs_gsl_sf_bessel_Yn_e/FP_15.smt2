(declare-fun a_ack!172 () (_ BitVec 32))
(assert (bvslt a_ack!172 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!172) #x00000001)))
(assert (= #x00000000 a_ack!172))

(check-sat)
(exit)
