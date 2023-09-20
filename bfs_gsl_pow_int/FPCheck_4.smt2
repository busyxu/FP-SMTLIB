(declare-fun n_ack!16 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!17 () (_ BitVec 64))
(assert (bvslt n_ack!16 #x00000000))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 x_ack!17))

(check-sat)
(exit)
