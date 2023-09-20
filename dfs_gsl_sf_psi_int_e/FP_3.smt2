(declare-fun a_ack!19 () (_ BitVec 32))
(assert (not (bvsle a_ack!19 #x00000000)))
(assert (not (bvsle a_ack!19 #x00000064)))

(check-sat)
(exit)
