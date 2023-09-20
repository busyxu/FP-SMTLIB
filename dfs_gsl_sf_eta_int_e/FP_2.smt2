(declare-fun a_ack!8 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!8)))
(assert (not (bvsle #x00000000 a_ack!8)))
(assert (not (= #x00000000 (bvand a_ack!8 #x00000001))))

(check-sat)
(exit)
