(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 d_ack!0))

(check-sat)
(exit)
