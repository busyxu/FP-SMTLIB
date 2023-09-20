(declare-fun a_ack!32 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!32)))
(assert (not (bvsle #x00000000 a_ack!32)))
(assert (not (= #x00000000 (bvand a_ack!32 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!32)))
(assert (not (bvslt a_ack!32 #x00000000)))

(check-sat)
(exit)
