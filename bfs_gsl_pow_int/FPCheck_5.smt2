(declare-fun n_ack!20 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!21 () (_ BitVec 64))
(assert (bvslt n_ack!20 #x00000000))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 x_ack!21))

(check-sat)
(exit)
