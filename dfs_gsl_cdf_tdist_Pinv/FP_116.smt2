(declare-fun x_ack!1274 () (_ BitVec 64))
(declare-fun mu_ack!1273 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1274) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1274) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!1273) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!1273) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1274) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!1274))
               ((_ to_fp 11 53) x_ack!1274))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!1274)))
       ((_ to_fp 11 53) x_ack!1274)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7ff8000000000001)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) x_ack!1274)))
                  (CF_pow #x3fa999999999999a
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!1273)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1273)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1273)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4049000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1273)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) mu_ack!1273)
                                     ((_ to_fp 11 53) #x4000000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (ite (= #x00000000
                   (bvand ((_ fp.to_sbv 32) roundTowardZero a!1) #x00000001))
                #x3ff0000000000000
                #xbff0000000000000))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1273)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(let ((a!4 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a!2)
                                  (CF_sin a!3))
                          ((_ to_fp 11 53) #x400921fb54442d18))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1273)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #xc065200000000000)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!1273)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) mu_ack!1273)
                        ((_ to_fp 11 53) #x4000000000000000)))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1273)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (let ((a!1 (CF_floor (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3ff0000000000000)
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) mu_ack!1273)
                                     ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!2)))))
(assert (let ((a!1 (CF_floor (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3ff0000000000000)
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) mu_ack!1273)
                                     ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult (bvadd #x0000000000000008 a!2) #x0000000000001001))))

(check-sat)
(exit)
