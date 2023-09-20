(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!57 () (_ BitVec 64))
(declare-fun x1_ack!58 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!58 p1_ack!57))

(check-sat)
(exit)
