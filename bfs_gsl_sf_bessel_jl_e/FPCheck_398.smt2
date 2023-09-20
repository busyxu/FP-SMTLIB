(declare-fun a_ack!1276 () (_ BitVec 32))
(declare-fun b_ack!1275 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1276 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1276)))
(assert (not (= #x00000001 a_ack!1276)))
(assert (not (= #x00000002 a_ack!1276)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1276)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1275)
                 ((_ to_fp 11 53) b_ack!1275))
         a!1)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1276)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1276)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1276)
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!1276)
                                  ((_ to_fp 11 53) #x3fe0000000000000))
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            ((_ fp.to_sbv 32) roundTowardZero a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!1276)
                                  ((_ to_fp 11 53) #x3fe0000000000000))
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            ((_ fp.to_sbv 32) roundTowardZero a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   ((_ fp.to_sbv 32) roundTowardZero a!1))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1276)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1276)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb999999999999a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!2 a!3)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   ((_ fp.to_sbv 32) roundTowardZero a!1))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1276)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1)))))
      (a!3 (CF_log (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt (fp.mul roundNearestTiesToEven a!2 a!3)
         ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            ((_ fp.to_sbv 32) roundTowardZero a!1))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x4065600000000000))))
  (not a!2))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3f847ae147ae147b))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.geq (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32) roundTowardZero a!1))
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1276)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              ((_ fp.to_sbv 32) roundTowardZero a!1))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
