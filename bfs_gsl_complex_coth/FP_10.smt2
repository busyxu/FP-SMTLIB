(declare-fun x_ack!179 () (_ BitVec 64))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!178 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!179))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (CF_sinh x_ack!179) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos y_ack!178) #x4000000000000000)
                           (CF_pow (CF_sinh x_ack!179) #x4000000000000000))
                   (CF_pow (CF_cos y_ack!178) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_sinh x_ack!179) #x4000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos y_ack!178) #x4000000000000000)
                           (CF_pow (CF_sinh x_ack!179) #x4000000000000000))
                   (CF_pow (CF_sinh x_ack!179) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_cos y_ack!178) #x4000000000000000))))

(check-sat)
(exit)
