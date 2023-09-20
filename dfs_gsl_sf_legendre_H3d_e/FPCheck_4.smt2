(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!11 () (_ BitVec 64))
(declare-fun b_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!10)) c_ack!11))

(check-sat)
(exit)
