(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!7 () (_ BitVec 64))
(declare-fun b_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) b_ack!6)) c_ack!7))

(check-sat)
(exit)
