(declare-fun n_ack!40 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!41 () (_ BitVec 64))
(assert (not (bvslt n_ack!40 #x00000000)))
(assert (not (= #x00000000 (bvand n_ack!40 #x00000001))))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!41 x_ack!41))

(check-sat)
(exit)
