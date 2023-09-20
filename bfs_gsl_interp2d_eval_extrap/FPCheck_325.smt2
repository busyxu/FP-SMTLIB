(declare-fun x1_ack!3416 () (_ BitVec 64))
(declare-fun x0_ack!3420 () (_ BitVec 64))
(declare-fun y0_ack!3417 () (_ BitVec 64))
(declare-fun x_ack!3418 () (_ BitVec 64))
(declare-fun y_ack!3419 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3420) ((_ to_fp 11 53) x1_ack!3416))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3417) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3418) ((_ to_fp 11 53) x0_ack!3420))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3418) ((_ to_fp 11 53) x1_ack!3416))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3419) ((_ to_fp 11 53) y0_ack!3417))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3419) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3416)
                       ((_ to_fp 11 53) x0_ack!3420))
               ((_ to_fp 11 53) x0_ack!3420))
       ((_ to_fp 11 53) x1_ack!3416)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3416)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3416)
                       ((_ to_fp 11 53) x0_ack!3420)))
       ((_ to_fp 11 53) x0_ack!3420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3417))
               ((_ to_fp 11 53) y0_ack!3417))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3417)))
       ((_ to_fp 11 53) y0_ack!3417)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3419)
                       ((_ to_fp 11 53) y0_ack!3417))
               ((_ to_fp 11 53) y0_ack!3417))
       ((_ to_fp 11 53) y_ack!3419)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3419)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3419)
                       ((_ to_fp 11 53) y0_ack!3417)))
       ((_ to_fp 11 53) y0_ack!3417)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3419)
                                   ((_ to_fp 11 53) y0_ack!3417))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3417))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3418)
                    ((_ to_fp 11 53) x0_ack!3420))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3416)
                    ((_ to_fp 11 53) x0_ack!3420)))
    a!1)))

(check-sat)
(exit)
