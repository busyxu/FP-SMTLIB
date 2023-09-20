(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #xbff0000000000000 y_ack!0))

(check-sat)
(exit)
