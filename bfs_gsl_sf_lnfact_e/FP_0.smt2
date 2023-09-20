(declare-fun a_ack!8 () (_ BitVec 32))
(assert (not (bvule a_ack!8 #x000000aa)))

(check-sat)
(exit)
