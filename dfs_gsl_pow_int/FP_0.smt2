(declare-fun n_ack!12 () (_ BitVec 32))
(assert (not (bvslt n_ack!12 #x00000000)))
(assert (not (= #x00000000 (bvand n_ack!12 #x00000001))))

(check-sat)
(exit)
