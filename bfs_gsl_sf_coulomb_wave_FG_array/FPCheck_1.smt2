(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 d_ack!1))

(check-sat)
(exit)
