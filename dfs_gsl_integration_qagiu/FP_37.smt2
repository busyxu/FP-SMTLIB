(declare-fun limit_ack!1018 () (_ BitVec 64))
(assert (bvult #x00000000000003e8 limit_ack!1018))

(check-sat)
(exit)
