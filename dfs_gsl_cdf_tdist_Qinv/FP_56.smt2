(declare-fun x_ack!752 () (_ BitVec 64))
(declare-fun mu_ack!751 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!752) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!752) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!751) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!751) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!752) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!752))
               ((_ to_fp 11 53) x_ack!752))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!752)))
       ((_ to_fp 11 53) x_ack!752)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) x_ack!752)))
                  (CF_pow #x3fa999999999999a
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!751)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!751)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!751)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!751)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!751)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) mu_ack!751)
                ((_ to_fp 11 53) #x4000000000000000))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!751)
               ((_ to_fp 11 53) #x4000000000000000))
       (CF_floor (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) mu_ack!751)
                         ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) mu_ack!751)
                               ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!1))))))
  (bvult #x0000000000000000 a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) mu_ack!751)
                               ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!1))))))
  (bvult a!2 #x0000000000001001))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!751)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!751)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) mu_ack!751)
                        ((_ to_fp 11 53) #x4000000000000000)))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!751)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!1 (CF_floor a!1)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!751)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!751)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!751)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x4014000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!751)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) mu_ack!751)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!751)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!2)
                 ((_ to_fp 11 53) #x3f7a41a41a41a41a))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!751)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3f7a41a41a41a41a)))))

(check-sat)
(exit)
