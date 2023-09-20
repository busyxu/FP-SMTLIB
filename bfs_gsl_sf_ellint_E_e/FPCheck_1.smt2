(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW a_ack!1 #x400921fb54442d18))

(check-sat)
(exit)
