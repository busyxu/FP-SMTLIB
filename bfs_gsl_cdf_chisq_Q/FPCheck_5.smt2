(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ACCURACY x_ack!8 #x4000000000000000))

(check-sat)
(exit)
