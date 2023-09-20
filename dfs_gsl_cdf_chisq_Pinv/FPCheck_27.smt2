(declare-fun x_ack!75 () (_ BitVec 64))
(declare-fun nu_ack!74 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!75) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!75) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!75) ((_ to_fp 11 53) #x3fa999999999999a)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!74)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!74)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!74)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!74)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!74)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!74)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!74)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq (CF_sin a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!74)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.lt (fp.abs (CF_sin a!1)) ((_ to_fp 11 53) #x3fa8209f5b22baa6))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!74)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #xc1dfffffff800000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.div roundNearestTiesToEven
                             ((_ to_fp 11 53) nu_ack!74)
                             ((_ to_fp 11 53) #x4000000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!74)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvsub #x00000000 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.div roundNearestTiesToEven
                             ((_ to_fp 11 53) nu_ack!74)
                             ((_ to_fp 11 53) #x4000000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (= #xffffffff a!1))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.div roundNearestTiesToEven
                             ((_ to_fp 11 53) nu_ack!74)
                             ((_ to_fp 11 53) #x4000000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!74)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000000 a!1)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!2 a!2)
    #xbf633816aa4607ab))))

(check-sat)
(exit)
