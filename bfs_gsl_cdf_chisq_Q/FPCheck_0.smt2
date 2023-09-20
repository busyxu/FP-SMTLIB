(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW nu_ack!0 #x4000000000000000))

(check-sat)
(exit)
