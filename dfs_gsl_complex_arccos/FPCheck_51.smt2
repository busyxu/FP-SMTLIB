(declare-fun y_ack!200 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!201 () (_ BitVec 64))
(declare-fun CF_tanh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!200))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow (fp.div roundNearestTiesToEven
                                   (CF_cos x_ack!201)
                                   (CF_sinh y_ack!200))
                           #x4000000000000000))))
  (FPCHECK_FMUL_OVERFLOW (CF_tanh y_ack!200) a!1)))

(check-sat)
(exit)
