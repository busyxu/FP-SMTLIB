(declare-fun y_ack!107 () (_ BitVec 64))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!108 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!107))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (CF_sinh y_ack!107) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos x_ack!108) #x4000000000000000)
                           (CF_pow (CF_sinh y_ack!107) #x4000000000000000))
                   (CF_pow (CF_cos x_ack!108) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_sinh y_ack!107) #x4000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_pow (CF_cos x_ack!108) #x4000000000000000)
                           (CF_pow (CF_sinh y_ack!107) #x4000000000000000))
                   (CF_pow (CF_sinh y_ack!107) #x4000000000000000))))
  (fp.eq a!1 (CF_pow (CF_cos x_ack!108) #x4000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) y_ack!107))))))
  (FPCHECK_FDIV_INVALID
    a!1
    (fp.add roundNearestTiesToEven
            (CF_pow (CF_cos x_ack!108) #x4000000000000000)
            (CF_pow (CF_sinh y_ack!107) #x4000000000000000)))))

(check-sat)
(exit)
