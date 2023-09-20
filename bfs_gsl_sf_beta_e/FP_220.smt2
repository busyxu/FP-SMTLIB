(declare-fun a_ack!2497 () (_ BitVec 64))
(declare-fun b_ack!2496 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2497) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2496) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2497) ((_ to_fp 11 53) #x4049000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2496) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2497) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2497) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2496) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!2496)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2496)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (fp.geq (fp.abs (fp.mul roundNearestTiesToEven a!2 a!3))
          ((_ to_fp 11 53) #x002921fb54442d18)))))

(check-sat)
(exit)
