(declare-fun x1_ack!3724 () (_ BitVec 64))
(declare-fun x0_ack!3729 () (_ BitVec 64))
(declare-fun y0_ack!3725 () (_ BitVec 64))
(declare-fun x_ack!3727 () (_ BitVec 64))
(declare-fun y_ack!3728 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!3726 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3729) ((_ to_fp 11 53) x1_ack!3724))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3725) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3727) ((_ to_fp 11 53) x0_ack!3729)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3728) ((_ to_fp 11 53) y0_ack!3725))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3728) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3724)
                       ((_ to_fp 11 53) x0_ack!3729))
               ((_ to_fp 11 53) x0_ack!3729))
       ((_ to_fp 11 53) x1_ack!3724)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3724)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3724)
                       ((_ to_fp 11 53) x0_ack!3729)))
       ((_ to_fp 11 53) x0_ack!3729)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3727)
                           ((_ to_fp 11 53) x0_ack!3729))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3724)
                           ((_ to_fp 11 53) x0_ack!3729)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3727)
                           ((_ to_fp 11 53) x0_ack!3729))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3724)
                           ((_ to_fp 11 53) x0_ack!3729)))))
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
                                   ((_ to_fp 11 53) x_ack!3727)
                                   ((_ to_fp 11 53) x0_ack!3729))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3724)
                                   ((_ to_fp 11 53) x0_ack!3729)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3728)
                                   ((_ to_fp 11 53) y0_ack!3725))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3725))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3726)))

(check-sat)
(exit)
