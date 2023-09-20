(declare-fun x_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!158 () (_ BitVec 64))
(declare-fun CF_tanh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!159))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_pow (fp.div roundNearestTiesToEven
                                   (CF_cos y_ack!158)
                                   (CF_sinh x_ack!159))
                           #x4000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven (CF_tanh x_ack!159) a!1))))

(check-sat)
(exit)
