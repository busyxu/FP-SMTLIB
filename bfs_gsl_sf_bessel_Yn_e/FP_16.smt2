(declare-fun a_ack!173 () (_ BitVec 32))
(assert (bvslt a_ack!173 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!173) #x00000001)))
(assert (not (= #x00000000 a_ack!173)))
(assert (= #xffffffff a_ack!173))

(check-sat)
(exit)
