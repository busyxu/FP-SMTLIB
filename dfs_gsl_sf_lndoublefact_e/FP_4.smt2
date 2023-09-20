(declare-fun a_ack!59 () (_ BitVec 32))
(assert (not (bvule a_ack!59 #x00000129)))
(assert (not (= #x00000000 (bvand a_ack!59 #x00000001))))

(check-sat)
(exit)
