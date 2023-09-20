(declare-fun x1_ack!3537 () (_ BitVec 64))
(declare-fun x0_ack!3541 () (_ BitVec 64))
(declare-fun y0_ack!3538 () (_ BitVec 64))
(declare-fun x_ack!3539 () (_ BitVec 64))
(declare-fun y_ack!3540 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3541) ((_ to_fp 11 53) x1_ack!3537))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3539) ((_ to_fp 11 53) x0_ack!3541))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3539) ((_ to_fp 11 53) x1_ack!3537))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3540) ((_ to_fp 11 53) y0_ack!3538))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3540) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3537)
                       ((_ to_fp 11 53) x0_ack!3541))
               ((_ to_fp 11 53) x0_ack!3541))
       ((_ to_fp 11 53) x1_ack!3537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3537)
                       ((_ to_fp 11 53) x0_ack!3541)))
       ((_ to_fp 11 53) x0_ack!3541)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3538))
               ((_ to_fp 11 53) y0_ack!3538))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3538)))
       ((_ to_fp 11 53) y0_ack!3538)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3540)
                       ((_ to_fp 11 53) y0_ack!3538))
               ((_ to_fp 11 53) y0_ack!3538))
       ((_ to_fp 11 53) y_ack!3540)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3540)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3540)
                       ((_ to_fp 11 53) y0_ack!3538)))
       ((_ to_fp 11 53) y0_ack!3538)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3539)
                                   ((_ to_fp 11 53) x0_ack!3541))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3537)
                                   ((_ to_fp 11 53) x0_ack!3541))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!3540)
                    ((_ to_fp 11 53) y0_ack!3538))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!3538))))))

(check-sat)
(exit)
