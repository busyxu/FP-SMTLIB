(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x0_ack!15 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY x0_ack!15 x0_ack!15))

(check-sat)
(exit)
