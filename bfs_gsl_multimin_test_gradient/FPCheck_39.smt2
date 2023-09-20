(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!168 () (_ BitVec 64))
(declare-fun x1_ack!169 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!169 p1_ack!168))

(check-sat)
(exit)
