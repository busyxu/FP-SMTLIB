(declare-fun x1_ack!3396 () (_ BitVec 64))
(declare-fun x0_ack!3400 () (_ BitVec 64))
(declare-fun y0_ack!3397 () (_ BitVec 64))
(declare-fun x_ack!3398 () (_ BitVec 64))
(declare-fun y_ack!3399 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3400) ((_ to_fp 11 53) x1_ack!3396))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3397) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3398) ((_ to_fp 11 53) x0_ack!3400))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3398) ((_ to_fp 11 53) x1_ack!3396))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3399) ((_ to_fp 11 53) y0_ack!3397))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3399) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3396)
                       ((_ to_fp 11 53) x0_ack!3400))
               ((_ to_fp 11 53) x0_ack!3400))
       ((_ to_fp 11 53) x1_ack!3396)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3396)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3396)
                       ((_ to_fp 11 53) x0_ack!3400)))
       ((_ to_fp 11 53) x0_ack!3400)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3397))
               ((_ to_fp 11 53) y0_ack!3397))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3397)))
       ((_ to_fp 11 53) y0_ack!3397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3399)
                       ((_ to_fp 11 53) y0_ack!3397))
               ((_ to_fp 11 53) y0_ack!3397))
       ((_ to_fp 11 53) y_ack!3399)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3399)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3399)
                       ((_ to_fp 11 53) y0_ack!3397)))
       ((_ to_fp 11 53) y0_ack!3397)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3399)
                                   ((_ to_fp 11 53) y0_ack!3397))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3397))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3398)
                    ((_ to_fp 11 53) x0_ack!3400))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3396)
                    ((_ to_fp 11 53) x0_ack!3400)))
    a!1)))

(check-sat)
(exit)
