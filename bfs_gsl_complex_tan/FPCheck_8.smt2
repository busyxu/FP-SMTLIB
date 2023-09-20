(declare-fun y_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!26 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!25))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY (CF_cos x_ack!26) (CF_sinh y_ack!25)))

(check-sat)
(exit)
