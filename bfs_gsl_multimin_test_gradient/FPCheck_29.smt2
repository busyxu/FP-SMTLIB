(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p2_ack!133 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 p2_ack!133))

(check-sat)
(exit)
