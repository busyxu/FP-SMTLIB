(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!148 () (_ BitVec 64))
(declare-fun x0_ack!147 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY x0_ack!147 p0_ack!148))

(check-sat)
(exit)
