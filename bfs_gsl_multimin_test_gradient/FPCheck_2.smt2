(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!9 () (_ BitVec 64))
(declare-fun x0_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY x0_ack!8 p0_ack!9))

(check-sat)
(exit)
