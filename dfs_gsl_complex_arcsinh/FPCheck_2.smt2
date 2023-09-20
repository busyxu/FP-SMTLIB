(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY #xbff0000000000000 y_ack!3))

(check-sat)
(exit)
