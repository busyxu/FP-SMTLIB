(declare-fun limit_ack!0 () (_ BitVec 64))
(assert (bvult #x00000000000003e8 limit_ack!0))

(check-sat)
(exit)
