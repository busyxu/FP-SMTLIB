(declare-fun x1_ack!3803 () (_ BitVec 64))
(declare-fun x0_ack!3807 () (_ BitVec 64))
(declare-fun y0_ack!3804 () (_ BitVec 64))
(declare-fun x_ack!3805 () (_ BitVec 64))
(declare-fun y_ack!3806 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3807) ((_ to_fp 11 53) x1_ack!3803))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3804) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3805) ((_ to_fp 11 53) x0_ack!3807)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3806) ((_ to_fp 11 53) y0_ack!3804))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3806) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3803)
                       ((_ to_fp 11 53) x0_ack!3807))
               ((_ to_fp 11 53) x0_ack!3807))
       ((_ to_fp 11 53) x1_ack!3803)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3803)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3803)
                       ((_ to_fp 11 53) x0_ack!3807)))
       ((_ to_fp 11 53) x0_ack!3807)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3805)
                           ((_ to_fp 11 53) x0_ack!3807))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3803)
                           ((_ to_fp 11 53) x0_ack!3807)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3805)
                           ((_ to_fp 11 53) x0_ack!3807))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3803)
                           ((_ to_fp 11 53) x0_ack!3807)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3806)
                                   ((_ to_fp 11 53) y0_ack!3804))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3804))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3805)
                    ((_ to_fp 11 53) x0_ack!3807))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3803)
                    ((_ to_fp 11 53) x0_ack!3807)))
    a!1)))

(check-sat)
(exit)
