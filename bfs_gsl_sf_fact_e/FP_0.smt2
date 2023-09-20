(declare-fun a_ack!0 () (_ BitVec 32))
(assert (not (bvult a_ack!0 #x00000012)))

(check-sat)
(exit)
