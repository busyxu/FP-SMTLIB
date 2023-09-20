(declare-fun limit_ack!8 () (_ BitVec 64))
(assert (bvult #x00000000000003e8 limit_ack!8))

(check-sat)
(exit)
