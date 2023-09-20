(declare-fun x1_ack!3300 () (_ BitVec 64))
(declare-fun x0_ack!3304 () (_ BitVec 64))
(declare-fun y0_ack!3301 () (_ BitVec 64))
(declare-fun x_ack!3302 () (_ BitVec 64))
(declare-fun y_ack!3303 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3304) ((_ to_fp 11 53) x1_ack!3300))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3301) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3302) ((_ to_fp 11 53) x0_ack!3304))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3302) ((_ to_fp 11 53) x1_ack!3300))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3303) ((_ to_fp 11 53) y0_ack!3301))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3303) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3300)
                       ((_ to_fp 11 53) x0_ack!3304))
               ((_ to_fp 11 53) x0_ack!3304))
       ((_ to_fp 11 53) x1_ack!3300)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3300)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3300)
                       ((_ to_fp 11 53) x0_ack!3304)))
       ((_ to_fp 11 53) x0_ack!3304)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3301))
               ((_ to_fp 11 53) y0_ack!3301))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3301)))
       ((_ to_fp 11 53) y0_ack!3301)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3303)
                       ((_ to_fp 11 53) y0_ack!3301))
               ((_ to_fp 11 53) y0_ack!3301))
       ((_ to_fp 11 53) y_ack!3303)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3303)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3303)
                       ((_ to_fp 11 53) y0_ack!3301)))
       ((_ to_fp 11 53) y0_ack!3301)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3302)
                                   ((_ to_fp 11 53) x0_ack!3304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3300)
                                   ((_ to_fp 11 53) x0_ack!3304)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3303)
                                   ((_ to_fp 11 53) y0_ack!3301))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3301))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
