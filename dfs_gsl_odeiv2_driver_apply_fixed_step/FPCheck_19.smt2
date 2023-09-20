(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!41 () (_ BitVec 64))
(assert (FPCHECK_FDIV_UNDERFLOW h_ack!41 #x4018000000000000))

(check-sat)
(exit)
