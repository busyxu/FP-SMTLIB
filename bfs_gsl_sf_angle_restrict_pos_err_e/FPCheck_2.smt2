(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!3 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY a_ack!3 #x401921fb54442d18))

(check-sat)
(exit)
