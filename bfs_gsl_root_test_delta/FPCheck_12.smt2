(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!18 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 x_ack!18))

(check-sat)
(exit)
