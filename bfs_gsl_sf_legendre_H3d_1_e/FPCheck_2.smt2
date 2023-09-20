(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun b_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY b_ack!8 a_ack!9))

(check-sat)
(exit)
