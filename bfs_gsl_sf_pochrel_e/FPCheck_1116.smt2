(declare-fun a_ack!3105 () (_ BitVec 64))
(declare-fun b_ack!3104 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3104))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3105)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!3105) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3105)
                    ((_ to_fp 11 53) b_ack!3104))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3105)
                       ((_ to_fp 11 53) b_ack!3104))
               ((_ to_fp 11 53) a_ack!3105))
       ((_ to_fp 11 53) b_ack!3104)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3105)
                       ((_ to_fp 11 53) b_ack!3104))
               ((_ to_fp 11 53) b_ack!3104))
       ((_ to_fp 11 53) a_ack!3105)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3105)
                                   ((_ to_fp 11 53) b_ack!3104))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3105)
                                   ((_ to_fp 11 53) b_ack!3104))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!3105)
                     ((_ to_fp 11 53) b_ack!3104))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3105)
                    ((_ to_fp 11 53) b_ack!3104))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!3105)
                                  ((_ to_fp 11 53) b_ack!3104)))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!1)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!3105)
               ((_ to_fp 11 53) b_ack!3104))
       ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3105)
                                   ((_ to_fp 11 53) b_ack!3104))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3105)
                                   ((_ to_fp 11 53) b_ack!3104))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fa8209f5b22baa6))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3105)
                    ((_ to_fp 11 53) b_ack!3104))
            ((_ to_fp 11 53) #xc1dfffffff800000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!3105)
                             ((_ to_fp 11 53) b_ack!3104))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!3105)
                                  ((_ to_fp 11 53) b_ack!3104))
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvsub #x00000000 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!3105)
                             ((_ to_fp 11 53) b_ack!3104))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (= #xffffffff a!1))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.sub roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!3105)
                             ((_ to_fp 11 53) b_ack!3104))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3105)
                           ((_ to_fp 11 53) b_ack!3104))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000000 a!1)))))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!2))))

(check-sat)
(exit)
