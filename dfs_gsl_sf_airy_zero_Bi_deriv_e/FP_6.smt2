(declare-fun a_ack!40 () (_ BitVec 32))
(assert (not (bvult a_ack!40 #x00000001)))
(assert (not (bvult (concat #x00000000 a_ack!40) #x0000000000000033)))

(check-sat)
(exit)
