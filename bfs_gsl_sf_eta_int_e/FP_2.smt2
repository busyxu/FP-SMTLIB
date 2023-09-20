(declare-fun a_ack!2 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!2)))
(assert (bvsle #x00000000 a_ack!2))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!2))
       #x0000000000000321))

(check-sat)
(exit)
