(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW a_ack!0 #x400921fb54442d18))

(check-sat)
(exit)
