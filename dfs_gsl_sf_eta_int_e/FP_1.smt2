(declare-fun a_ack!7 () (_ BitVec 32))
(assert (not (bvslt #x00000064 a_ack!7)))
(assert (not (bvsle #x00000000 a_ack!7)))

(check-sat)
(exit)
