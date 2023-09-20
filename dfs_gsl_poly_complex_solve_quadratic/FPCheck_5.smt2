(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4010000000000000 a_ack!10))

(check-sat)
(exit)
