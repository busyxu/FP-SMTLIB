(declare-fun a_ack!5 () (_ BitVec 32))
(assert (bvslt a_ack!5 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!5) #x00000001))))
(assert (= #x00000000 a_ack!5))

(check-sat)
(exit)
