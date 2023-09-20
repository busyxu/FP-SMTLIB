(declare-fun x1_ack!3783 () (_ BitVec 64))
(declare-fun x0_ack!3787 () (_ BitVec 64))
(declare-fun y0_ack!3784 () (_ BitVec 64))
(declare-fun x_ack!3785 () (_ BitVec 64))
(declare-fun y_ack!3786 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3787) ((_ to_fp 11 53) x1_ack!3783))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3784) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3785) ((_ to_fp 11 53) x0_ack!3787)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3786) ((_ to_fp 11 53) y0_ack!3784))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3786) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3783)
                       ((_ to_fp 11 53) x0_ack!3787))
               ((_ to_fp 11 53) x0_ack!3787))
       ((_ to_fp 11 53) x1_ack!3783)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3783)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3783)
                       ((_ to_fp 11 53) x0_ack!3787)))
       ((_ to_fp 11 53) x0_ack!3787)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3785)
                           ((_ to_fp 11 53) x0_ack!3787))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3783)
                           ((_ to_fp 11 53) x0_ack!3787)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3785)
                           ((_ to_fp 11 53) x0_ack!3787))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3783)
                           ((_ to_fp 11 53) x0_ack!3787)))))
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
                                   ((_ to_fp 11 53) y_ack!3786)
                                   ((_ to_fp 11 53) y0_ack!3784))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3784))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3785)
                    ((_ to_fp 11 53) x0_ack!3787))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3783)
                    ((_ to_fp 11 53) x0_ack!3787)))
    a!1)))

(check-sat)
(exit)
