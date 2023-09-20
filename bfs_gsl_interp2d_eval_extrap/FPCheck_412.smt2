(declare-fun x1_ack!4480 () (_ BitVec 64))
(declare-fun x0_ack!4485 () (_ BitVec 64))
(declare-fun y0_ack!4481 () (_ BitVec 64))
(declare-fun x_ack!4483 () (_ BitVec 64))
(declare-fun y_ack!4484 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!4482 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4485) ((_ to_fp 11 53) x1_ack!4480))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4481) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4483) ((_ to_fp 11 53) x0_ack!4485))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4483) ((_ to_fp 11 53) x1_ack!4480))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4484) ((_ to_fp 11 53) y0_ack!4481)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4480)
                       ((_ to_fp 11 53) x0_ack!4485))
               ((_ to_fp 11 53) x0_ack!4485))
       ((_ to_fp 11 53) x1_ack!4480)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4480)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4480)
                       ((_ to_fp 11 53) x0_ack!4485)))
       ((_ to_fp 11 53) x0_ack!4485)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4481))
               ((_ to_fp 11 53) y0_ack!4481))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4481)))
       ((_ to_fp 11 53) y0_ack!4481)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4484)
                           ((_ to_fp 11 53) y0_ack!4481))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4481)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4484)
                           ((_ to_fp 11 53) y0_ack!4481))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4481)))))
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
                                   ((_ to_fp 11 53) x_ack!4483)
                                   ((_ to_fp 11 53) x0_ack!4485))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4480)
                                   ((_ to_fp 11 53) x0_ack!4485)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4484)
                                   ((_ to_fp 11 53) y0_ack!4481))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4481))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!4482)))

(check-sat)
(exit)
