(declare-fun n_ack!8 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!9 () (_ BitVec 64))
(assert (not (bvslt n_ack!8 #x00000000)))
(assert (= #x00000000 (bvand n_ack!8 #x00000001)))
(assert (FPCHECK_FMUL_ACCURACY x_ack!9 x_ack!9))

(check-sat)
(exit)
