(declare-fun a_ack!2513 () (_ BitVec 64))
(declare-fun b_ack!2512 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2512) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x4049000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2512) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2512) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2512) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2512) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2512) (CF_floor b_ack!2512)))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor b_ack!2512))))))
  (bvult #x0000000000000000
         (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1)))))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor b_ack!2512))))))
  (bvult (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1))
         #x0000000000001001)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2513)
                    ((_ to_fp 11 53) b_ack!2512))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2513)
                    ((_ to_fp 11 53) b_ack!2512))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!2513)
                ((_ to_fp 11 53) b_ack!2512))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!2513)
                          ((_ to_fp 11 53) b_ack!2512))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2513)
                                    ((_ to_fp 11 53) b_ack!2512))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) b_ack!2512))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) b_ack!2512))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2513)
                    ((_ to_fp 11 53) b_ack!2512))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2513)
                    ((_ to_fp 11 53) b_ack!2512))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2513)
               ((_ to_fp 11 53) b_ack!2512))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2513)
                           ((_ to_fp 11 53) b_ack!2512))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) b_ack!2512)))))
      (a!2 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) b_ack!2512))))))
  (FPCHECK_FMUL_OVERFLOW
    #x40040d931ff62706
    (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven a!1 a!2) a!1))))

(check-sat)
(exit)
