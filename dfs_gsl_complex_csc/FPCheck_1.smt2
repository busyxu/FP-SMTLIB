(declare-fun y_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!6 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW (CF_sin x_ack!6) (CF_cosh y_ack!5)))

(check-sat)
(exit)
