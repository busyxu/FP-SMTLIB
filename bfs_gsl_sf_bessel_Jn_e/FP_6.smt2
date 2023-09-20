(declare-fun a_ack!49 () (_ BitVec 32))
(assert (bvslt a_ack!49 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!49) #x00000001)))

(check-sat)
(exit)
