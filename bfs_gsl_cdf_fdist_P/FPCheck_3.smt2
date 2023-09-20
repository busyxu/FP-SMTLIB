(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu1_ack!12 () (_ BitVec 64))
(declare-fun nu2_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ZERO nu2_ack!13 nu1_ack!12))

(check-sat)
(exit)
