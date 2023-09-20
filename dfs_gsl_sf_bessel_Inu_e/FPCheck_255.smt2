(declare-fun b_ack!979 () (_ BitVec 64))
(declare-fun a_ack!980 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!979) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!980) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!979)
               ((_ to_fp 11 53) b_ack!979))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!980)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!980) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!979) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!979) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!980) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!980) ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!980)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!980)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!980)
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb999999999999a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fb999999999999a))))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb999999999999a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!980)
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!980)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3fb999999999999a))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!980)
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fb999999999999a)
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x402e000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!980)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #xbfe0000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!980)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x4026000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a!1)
            ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
