(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!1562 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY h_ack!1562 #x4000000000000000))

(check-sat)
(exit)
