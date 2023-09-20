(declare-fun x1_ack!4502 () (_ BitVec 64))
(declare-fun x0_ack!4506 () (_ BitVec 64))
(declare-fun y0_ack!4503 () (_ BitVec 64))
(declare-fun x_ack!4504 () (_ BitVec 64))
(declare-fun y_ack!4505 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4506) ((_ to_fp 11 53) x1_ack!4502))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4503) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4504) ((_ to_fp 11 53) x0_ack!4506))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4504) ((_ to_fp 11 53) x1_ack!4502))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4505) ((_ to_fp 11 53) y0_ack!4503)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4502)
                       ((_ to_fp 11 53) x0_ack!4506))
               ((_ to_fp 11 53) x0_ack!4506))
       ((_ to_fp 11 53) x1_ack!4502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4502)
                       ((_ to_fp 11 53) x0_ack!4506)))
       ((_ to_fp 11 53) x0_ack!4506)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4503))
               ((_ to_fp 11 53) y0_ack!4503))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4503)))
       ((_ to_fp 11 53) y0_ack!4503)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4505)
                           ((_ to_fp 11 53) y0_ack!4503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4503)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4505)
                           ((_ to_fp 11 53) y0_ack!4503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4503)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!4505)
                  ((_ to_fp 11 53) y0_ack!4503))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!4503)))))

(check-sat)
(exit)
