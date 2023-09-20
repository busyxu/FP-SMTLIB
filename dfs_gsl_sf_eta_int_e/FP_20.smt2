(declare-fun a_ack!189 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt #x00000064 a_ack!189)))
(assert (not (bvsle #x00000000 a_ack!189)))
(assert (not (= #x00000000 (bvand a_ack!189 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!189)))
(assert (bvslt a_ack!189 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!189 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!189)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189)
       ((_ to_fp 11 53) #xc065400000000000)))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!189))
                             ((_ to_fp 11 53) #x4024000000000000)))))
  (bvult #x0000000000000000
         (bvmul #x0000000000000008
                ((_ sign_extend 32) ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!189))
                             ((_ to_fp 11 53) #x4024000000000000)))))
  (bvult (bvmul #x0000000000000008
                ((_ sign_extend 32) ((_ fp.to_sbv 32) roundTowardZero a!1)))
         #x0000000000000089)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189))
       (CF_floor (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!189)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x3ff0000000000000)
                               ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 a_ack!189))))))
(let ((a!2 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!1))))))
  (bvult #x0000000000000000 a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x3ff0000000000000)
                               ((_ to_fp 11 53)
                                 roundNearestTiesToEven
                                 a_ack!189))))))
(let ((a!2 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!1))))))
  (bvult a!2 #x0000000000001001))))

(check-sat)
(exit)
