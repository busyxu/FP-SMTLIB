(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!71 () (_ BitVec 64))
(declare-fun x1_ack!72 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!72 p1_ack!71))

(check-sat)
(exit)
