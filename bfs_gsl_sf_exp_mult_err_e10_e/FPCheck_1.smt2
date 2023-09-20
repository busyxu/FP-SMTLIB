(declare-fun c_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!8 () (_ BitVec 64))
(declare-fun d_ack!7 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) c_ack!6) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW d_ack!7 (CF_exp a_ack!8)))

(check-sat)
(exit)
