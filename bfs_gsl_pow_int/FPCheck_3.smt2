(declare-fun n_ack!14 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!15 () (_ BitVec 64))
(assert (bvslt n_ack!14 #x00000000))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 x_ack!15))

(check-sat)
(exit)
