(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!273 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW h_ack!273 #x4008000000000000))

(check-sat)
(exit)
