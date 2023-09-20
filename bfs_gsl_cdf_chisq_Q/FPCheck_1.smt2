(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW nu_ack!1 #x4000000000000000))

(check-sat)
(exit)
