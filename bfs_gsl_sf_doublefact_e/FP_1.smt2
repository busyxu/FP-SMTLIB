(declare-fun a_ack!7 () (_ BitVec 32))
(assert (not (bvult a_ack!7 #x0000001a)))
(assert (not (bvule a_ack!7 #x00000129)))

(check-sat)
(exit)
