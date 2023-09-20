(declare-fun b_ack!12 () (_ BitVec 32))
(assert (not (bvslt b_ack!12 #x00000000)))
(assert (= #x00000000 (bvand b_ack!12 #x00000001)))

(check-sat)
(exit)
