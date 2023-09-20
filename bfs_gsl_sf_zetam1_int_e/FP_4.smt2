(declare-fun a_ack!32 () (_ BitVec 32))
(assert (bvslt a_ack!32 #x00000000))
(assert (= #x00000000 (bvand a_ack!32 #x00000001)))

(check-sat)
(exit)
