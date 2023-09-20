(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x1_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY x1_ack!10 x1_ack!10))

(check-sat)
(exit)
