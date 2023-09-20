(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW x_ack!6 #x4000000000000000))

(check-sat)
(exit)
