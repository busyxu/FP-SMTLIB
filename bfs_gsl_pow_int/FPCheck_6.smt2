(declare-fun n_ack!25 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!26 () (_ BitVec 64))
(assert (not (bvslt n_ack!25 #x00000000)))
(assert (not (= #x00000000 (bvand n_ack!25 #x00000001))))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 x_ack!26))

(check-sat)
(exit)
