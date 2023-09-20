(declare-fun x_ack!167 () (_ BitVec 64))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!166 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!167))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (CF_sinh x_ack!167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos y_ack!166) #x4000000000000000)
                           (CF_pow (CF_sinh x_ack!167) #x4000000000000000))
                   (CF_pow (CF_cos y_ack!166) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_sinh x_ack!167) #x4000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos y_ack!166) #x4000000000000000)
                           (CF_pow (CF_sinh x_ack!167) #x4000000000000000))
                   (CF_pow (CF_sinh x_ack!167) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_cos y_ack!166) #x4000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 y_ack!166))

(check-sat)
(exit)
