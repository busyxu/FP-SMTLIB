(declare-fun a_ack!495 () (_ BitVec 32))
(assert (bvslt a_ack!495 #x00000000))
(assert (= #x00000000 (bvand a_ack!495 #x00000001)))

(check-sat)
(exit)
