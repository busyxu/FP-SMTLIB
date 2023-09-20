(declare-fun a_ack!7 () (_ BitVec 32))
(assert (not (bvult a_ack!7 #x00000012)))
(assert (not (bvule a_ack!7 #x000000aa)))

(check-sat)
(exit)
