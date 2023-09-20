(declare-fun a_ack!8 () (_ BitVec 32))
(assert (not (bvule a_ack!8 #x00000129)))

(check-sat)
(exit)
