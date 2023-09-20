(declare-fun a_ack!118 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!118)))
(assert (not (bvsle #x00000000 a_ack!118)))
(assert (not (= #x00000000 (bvand a_ack!118 #x00000001))))
(assert (bvslt #xffffff9d a_ack!118))

(check-sat)
(exit)
