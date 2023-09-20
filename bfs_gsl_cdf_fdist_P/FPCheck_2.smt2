(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu1_ack!8 () (_ BitVec 64))
(declare-fun nu2_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY nu2_ack!9 nu1_ack!8))

(check-sat)
(exit)
