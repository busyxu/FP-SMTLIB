(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x2_ack!16 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY x2_ack!16 x2_ack!16))

(check-sat)
(exit)
