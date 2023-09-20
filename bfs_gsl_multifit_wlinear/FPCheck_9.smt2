(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e0_ack!18 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW e0_ack!18 e0_ack!18))

(check-sat)
(exit)
