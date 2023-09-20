(declare-fun x1_ack!4426 () (_ BitVec 64))
(declare-fun x0_ack!4430 () (_ BitVec 64))
(declare-fun y0_ack!4427 () (_ BitVec 64))
(declare-fun x_ack!4428 () (_ BitVec 64))
(declare-fun y_ack!4429 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4430) ((_ to_fp 11 53) x1_ack!4426))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4427) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4428) ((_ to_fp 11 53) x0_ack!4430))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4428) ((_ to_fp 11 53) x1_ack!4426))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4429) ((_ to_fp 11 53) y0_ack!4427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4426)
                       ((_ to_fp 11 53) x0_ack!4430))
               ((_ to_fp 11 53) x0_ack!4430))
       ((_ to_fp 11 53) x1_ack!4426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4426)
                       ((_ to_fp 11 53) x0_ack!4430)))
       ((_ to_fp 11 53) x0_ack!4430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4427))
               ((_ to_fp 11 53) y0_ack!4427))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4427)))
       ((_ to_fp 11 53) y0_ack!4427)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4429)
                           ((_ to_fp 11 53) y0_ack!4427))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4427)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4429)
                           ((_ to_fp 11 53) y0_ack!4427))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4427)))))
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
                                   ((_ to_fp 11 53) x_ack!4428)
                                   ((_ to_fp 11 53) x0_ack!4430))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4426)
                                   ((_ to_fp 11 53) x0_ack!4430)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4429)
                                   ((_ to_fp 11 53) y0_ack!4427))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4427))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
