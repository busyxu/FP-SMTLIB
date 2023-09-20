(declare-fun x1_ack!2731 () (_ BitVec 64))
(declare-fun x0_ack!2735 () (_ BitVec 64))
(declare-fun y0_ack!2732 () (_ BitVec 64))
(declare-fun x_ack!2733 () (_ BitVec 64))
(declare-fun y_ack!2734 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2735) ((_ to_fp 11 53) x1_ack!2731))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2732) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2733) ((_ to_fp 11 53) x0_ack!2735))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2733) ((_ to_fp 11 53) x1_ack!2731))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2734) ((_ to_fp 11 53) y0_ack!2732))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2734) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2731)
                       ((_ to_fp 11 53) x0_ack!2735))
               ((_ to_fp 11 53) x0_ack!2735))
       ((_ to_fp 11 53) x1_ack!2731)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2731)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2731)
                       ((_ to_fp 11 53) x0_ack!2735)))
       ((_ to_fp 11 53) x0_ack!2735)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2732))
               ((_ to_fp 11 53) y0_ack!2732))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2732)))
       ((_ to_fp 11 53) y0_ack!2732)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2733)
                                   ((_ to_fp 11 53) x0_ack!2735))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2731)
                                   ((_ to_fp 11 53) x0_ack!2735)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2734)
                                   ((_ to_fp 11 53) y0_ack!2732))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2732))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
