(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x4010000000000000 a_ack!6))

(check-sat)
(exit)
