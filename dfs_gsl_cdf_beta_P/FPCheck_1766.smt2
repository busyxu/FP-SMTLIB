(declare-fun x_ack!8349 () (_ BitVec 64))
(declare-fun nu1_ack!8347 () (_ BitVec 64))
(declare-fun nu2_ack!8348 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!8349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!8349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!8348) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!8348) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu1_ack!8347) (CF_floor nu1_ack!8347))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8348) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!8347)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!8347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!8347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!8347)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!8347)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!8347)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu1_ack!8347)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) nu1_ack!8347))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (fp.eq (CF_sin (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x400921fb54442d18)
                                  ((_ to_fp 11 53) nu1_ack!8347)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400921fb54442d18)
                                   ((_ to_fp 11 53) nu1_ack!8347))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fa8209f5b22baa6))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!8347) ((_ to_fp 11 53) #xc1dfffffff800000))))
(assert (let ((a!1 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) nu1_ack!8347)
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) nu1_ack!8347)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (= #xffffffff
              ((_ fp.to_sbv 32)
                roundTowardZero
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) nu1_ack!8347)
                        ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) nu1_ack!8347)
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!8347)
                    ((_ to_fp 11 53) roundNearestTiesToEven a!1))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!8347)
                    ((_ to_fp 11 53) roundNearestTiesToEven a!1)))
    #xbf633816aa4607ab)))

(check-sat)
(exit)
