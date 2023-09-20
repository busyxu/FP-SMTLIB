(declare-fun y_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!3 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) y_ack!2) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW (CF_cos x_ack!3) #x3ff0000000000000))

(check-sat)
(exit)
