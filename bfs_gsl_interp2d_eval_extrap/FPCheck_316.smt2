(declare-fun x1_ack!3320 () (_ BitVec 64))
(declare-fun x0_ack!3324 () (_ BitVec 64))
(declare-fun y0_ack!3321 () (_ BitVec 64))
(declare-fun x_ack!3322 () (_ BitVec 64))
(declare-fun y_ack!3323 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3324) ((_ to_fp 11 53) x1_ack!3320))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3321) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3322) ((_ to_fp 11 53) x0_ack!3324))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3322) ((_ to_fp 11 53) x1_ack!3320))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3323) ((_ to_fp 11 53) y0_ack!3321))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3323) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3320)
                       ((_ to_fp 11 53) x0_ack!3324))
               ((_ to_fp 11 53) x0_ack!3324))
       ((_ to_fp 11 53) x1_ack!3320)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3320)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3320)
                       ((_ to_fp 11 53) x0_ack!3324)))
       ((_ to_fp 11 53) x0_ack!3324)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3321))
               ((_ to_fp 11 53) y0_ack!3321))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3321)))
       ((_ to_fp 11 53) y0_ack!3321)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3323)
                       ((_ to_fp 11 53) y0_ack!3321))
               ((_ to_fp 11 53) y0_ack!3321))
       ((_ to_fp 11 53) y_ack!3323)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3323)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3323)
                       ((_ to_fp 11 53) y0_ack!3321)))
       ((_ to_fp 11 53) y0_ack!3321)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3322)
                                   ((_ to_fp 11 53) x0_ack!3324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3320)
                                   ((_ to_fp 11 53) x0_ack!3324)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3323)
                                   ((_ to_fp 11 53) y0_ack!3321))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3321))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
