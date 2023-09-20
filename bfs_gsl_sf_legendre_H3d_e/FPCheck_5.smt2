(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!15 () (_ BitVec 64))
(declare-fun b_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) b_ack!14)) c_ack!15))

(check-sat)
(exit)
