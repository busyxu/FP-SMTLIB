(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun mu_ack!8 () (_ BitVec 64))
(declare-fun x_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY x_ack!9 mu_ack!8))

(check-sat)
(exit)
