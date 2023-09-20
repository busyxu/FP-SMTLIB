(declare-fun x_ack!227 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!226 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!227))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) y_ack!226))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos y_ack!226) #x4000000000000000)
                           (CF_pow (CF_sinh x_ack!227) #x4000000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!2 #x7ff0000000000001))))

(check-sat)
(exit)
