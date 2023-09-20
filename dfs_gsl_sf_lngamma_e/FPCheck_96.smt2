(declare-fun a_ack!159 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!159)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!159)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!159))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!159))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!159))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fa8209f5b22baa6))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #xc1dfffffff800000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!159)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) a_ack!159)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!159)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!159)
                       ((_ to_fp 11 53) #x3fe0000000000000)))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!159)
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!159)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (= #xffffffff
              ((_ fp.to_sbv 32)
                roundTowardZero
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!159)
                        ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!159)
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!159)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!159)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
                   ((_ to_fp 11 53) #xbf633816aa4607ab))))
  (FPCHECK_FADD_OVERFLOW #x3f9ac6805cf350a6 a!2))))

(check-sat)
(exit)
