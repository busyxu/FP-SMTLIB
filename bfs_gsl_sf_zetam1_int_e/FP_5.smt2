(declare-fun a_ack!33 () (_ BitVec 32))
(assert (bvslt a_ack!33 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!33 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!33)))

(check-sat)
(exit)
