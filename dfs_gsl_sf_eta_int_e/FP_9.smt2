(declare-fun a_ack!33 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!33)))
(assert (not (bvsle #x00000000 a_ack!33)))
(assert (not (= #x00000000 (bvand a_ack!33 #x00000001))))
(assert (bvslt #xffffff9d a_ack!33))

(check-sat)
(exit)
