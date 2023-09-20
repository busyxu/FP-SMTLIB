(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!12 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4020000000000000 x_initial_ack!12))

(check-sat)
(exit)
