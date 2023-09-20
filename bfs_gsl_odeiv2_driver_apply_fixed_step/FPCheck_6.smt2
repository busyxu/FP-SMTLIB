(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW y0_ack!9 y0_ack!9))

(check-sat)
(exit)
