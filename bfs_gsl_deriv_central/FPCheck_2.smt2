(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!8 () (_ BitVec 64))
(declare-fun x_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY x_ack!9 h_ack!8))

(check-sat)
(exit)
