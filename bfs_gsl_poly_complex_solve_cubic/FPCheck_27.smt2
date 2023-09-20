(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!63 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x403b000000000000 c_ack!63))

(check-sat)
(exit)
