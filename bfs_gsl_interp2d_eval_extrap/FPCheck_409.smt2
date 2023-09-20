(declare-fun x1_ack!4436 () (_ BitVec 64))
(declare-fun x0_ack!4440 () (_ BitVec 64))
(declare-fun y0_ack!4437 () (_ BitVec 64))
(declare-fun x_ack!4438 () (_ BitVec 64))
(declare-fun y_ack!4439 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4440) ((_ to_fp 11 53) x1_ack!4436))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4437) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4438) ((_ to_fp 11 53) x0_ack!4440))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4438) ((_ to_fp 11 53) x1_ack!4436))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4439) ((_ to_fp 11 53) y0_ack!4437)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4436)
                       ((_ to_fp 11 53) x0_ack!4440))
               ((_ to_fp 11 53) x0_ack!4440))
       ((_ to_fp 11 53) x1_ack!4436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4436)
                       ((_ to_fp 11 53) x0_ack!4440)))
       ((_ to_fp 11 53) x0_ack!4440)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4437))
               ((_ to_fp 11 53) y0_ack!4437))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4437)))
       ((_ to_fp 11 53) y0_ack!4437)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4439)
                           ((_ to_fp 11 53) y0_ack!4437))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4437)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4439)
                           ((_ to_fp 11 53) y0_ack!4437))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4437)))))
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
                                   ((_ to_fp 11 53) x_ack!4438)
                                   ((_ to_fp 11 53) x0_ack!4440))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4436)
                                   ((_ to_fp 11 53) x0_ack!4440)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4439)
                                   ((_ to_fp 11 53) y0_ack!4437))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4437))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
