(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4008000000000000 b_ack!6))

(check-sat)
(exit)
