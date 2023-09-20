(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW (fp.abs ((_ to_fp 11 53) b_ack!0)) #x401921fb54442d18))

(check-sat)
(exit)
