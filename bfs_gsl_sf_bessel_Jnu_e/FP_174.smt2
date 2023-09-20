(declare-fun b_ack!3155 () (_ BitVec 64))
(declare-fun a_ack!3156 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3155)
                       ((_ to_fp 11 53) b_ack!3155))
               ((_ to_fp 11 53) b_ack!3155))
       ((_ to_fp 11 53) b_ack!3155)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3155)
                       ((_ to_fp 11 53) b_ack!3155))
               ((_ to_fp 11 53) b_ack!3155))
       ((_ to_fp 11 53) b_ack!3155)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3155)
               ((_ to_fp 11 53) b_ack!3155))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3156)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3156) ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!3156)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!3156)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!3156)
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!3156)
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fb999999999999a)
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!3156)
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
         ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.leq (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.leq (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (CF_floor (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                               ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!2))))))
  (bvult #x0000000000000000 a!3)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!3156)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                               ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         ((_ sign_extend 32) (bvadd #xffffffff a!2))))))
  (bvult a!3 #x0000000000001001)))))

(check-sat)
(exit)
