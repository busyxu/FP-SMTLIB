(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY a_ack!14 a_ack!14))

(check-sat)
(exit)
