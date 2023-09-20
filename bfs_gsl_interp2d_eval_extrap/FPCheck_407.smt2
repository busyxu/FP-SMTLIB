(declare-fun x1_ack!4416 () (_ BitVec 64))
(declare-fun x0_ack!4420 () (_ BitVec 64))
(declare-fun y0_ack!4417 () (_ BitVec 64))
(declare-fun x_ack!4418 () (_ BitVec 64))
(declare-fun y_ack!4419 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4420) ((_ to_fp 11 53) x1_ack!4416))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4417) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4418) ((_ to_fp 11 53) x0_ack!4420))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4418) ((_ to_fp 11 53) x1_ack!4416))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4419) ((_ to_fp 11 53) y0_ack!4417)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4416)
                       ((_ to_fp 11 53) x0_ack!4420))
               ((_ to_fp 11 53) x0_ack!4420))
       ((_ to_fp 11 53) x1_ack!4416)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4416)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4416)
                       ((_ to_fp 11 53) x0_ack!4420)))
       ((_ to_fp 11 53) x0_ack!4420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4417))
               ((_ to_fp 11 53) y0_ack!4417))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4417)))
       ((_ to_fp 11 53) y0_ack!4417)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4419)
                           ((_ to_fp 11 53) y0_ack!4417))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4417)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4419)
                           ((_ to_fp 11 53) y0_ack!4417))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4417)))))
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
                                   ((_ to_fp 11 53) x_ack!4418)
                                   ((_ to_fp 11 53) x0_ack!4420))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4416)
                                   ((_ to_fp 11 53) x0_ack!4420)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4419)
                                   ((_ to_fp 11 53) y0_ack!4417))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4417))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
