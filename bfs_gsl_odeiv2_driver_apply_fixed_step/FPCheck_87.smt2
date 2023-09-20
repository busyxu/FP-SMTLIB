(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!302 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 h_ack!302))

(check-sat)
(exit)
