(declare-fun n_ack!0 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!1 () (_ BitVec 64))
(assert (not (bvslt n_ack!0 #x00000000)))
(assert (= #x00000000 (bvand n_ack!0 #x00000001)))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!1 x_ack!1))

(check-sat)
(exit)
