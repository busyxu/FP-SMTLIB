(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!24 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 a_ack!24))

(check-sat)
(exit)
