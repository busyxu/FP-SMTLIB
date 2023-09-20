(declare-fun a_ack!6 () (_ BitVec 32))
(assert (bvslt a_ack!6 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!6) #x00000001))))
(assert (not (= #x00000000 a_ack!6)))
(assert (not (= #xffffffff a_ack!6)))

(check-sat)
(exit)
