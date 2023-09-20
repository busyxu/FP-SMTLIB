(declare-fun y_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!11 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW (CF_cos x_ack!11) (CF_sinh y_ack!10)))

(check-sat)
(exit)
