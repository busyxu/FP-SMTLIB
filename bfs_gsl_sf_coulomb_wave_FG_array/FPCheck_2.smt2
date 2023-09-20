(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 d_ack!3))

(check-sat)
(exit)
