(declare-fun b_ack!23 () (_ BitVec 32))
(assert (not (bvslt b_ack!23 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!23 #x00000001))))

(check-sat)
(exit)
