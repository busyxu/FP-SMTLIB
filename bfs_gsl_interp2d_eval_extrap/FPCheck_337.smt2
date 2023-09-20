(declare-fun x1_ack!3557 () (_ BitVec 64))
(declare-fun x0_ack!3561 () (_ BitVec 64))
(declare-fun y0_ack!3558 () (_ BitVec 64))
(declare-fun x_ack!3559 () (_ BitVec 64))
(declare-fun y_ack!3560 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3561) ((_ to_fp 11 53) x1_ack!3557))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3558) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3559) ((_ to_fp 11 53) x0_ack!3561))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3559) ((_ to_fp 11 53) x1_ack!3557))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3560) ((_ to_fp 11 53) y0_ack!3558))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3560) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3557)
                       ((_ to_fp 11 53) x0_ack!3561))
               ((_ to_fp 11 53) x0_ack!3561))
       ((_ to_fp 11 53) x1_ack!3557)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3557)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3557)
                       ((_ to_fp 11 53) x0_ack!3561)))
       ((_ to_fp 11 53) x0_ack!3561)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3558))
               ((_ to_fp 11 53) y0_ack!3558))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3558)))
       ((_ to_fp 11 53) y0_ack!3558)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3560)
                       ((_ to_fp 11 53) y0_ack!3558))
               ((_ to_fp 11 53) y0_ack!3558))
       ((_ to_fp 11 53) y_ack!3560)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3560)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3560)
                       ((_ to_fp 11 53) y0_ack!3558)))
       ((_ to_fp 11 53) y0_ack!3558)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3559)
                                   ((_ to_fp 11 53) x0_ack!3561))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3557)
                                   ((_ to_fp 11 53) x0_ack!3561))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!3560)
                    ((_ to_fp 11 53) y0_ack!3558))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!3558))))))

(check-sat)
(exit)
