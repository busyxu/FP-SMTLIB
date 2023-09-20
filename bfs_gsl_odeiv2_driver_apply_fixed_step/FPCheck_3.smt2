(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4024000000000000 y1_ack!4))

(check-sat)
(exit)
