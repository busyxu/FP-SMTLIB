(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun t_ack!9 () (_ BitVec 64))
(declare-fun t1_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY t1_ack!8 t_ack!9))

(check-sat)
(exit)
