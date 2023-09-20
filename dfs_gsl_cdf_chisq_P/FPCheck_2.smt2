(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun nu_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY nu_ack!3 #x4000000000000000))

(check-sat)
(exit)
