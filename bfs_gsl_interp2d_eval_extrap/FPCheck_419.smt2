(declare-fun x1_ack!4567 () (_ BitVec 64))
(declare-fun x0_ack!4572 () (_ BitVec 64))
(declare-fun y0_ack!4568 () (_ BitVec 64))
(declare-fun x_ack!4570 () (_ BitVec 64))
(declare-fun y_ack!4571 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!4569 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4572) ((_ to_fp 11 53) x1_ack!4567))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4568) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4570) ((_ to_fp 11 53) x0_ack!4572))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4570) ((_ to_fp 11 53) x1_ack!4567))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4571) ((_ to_fp 11 53) y0_ack!4568)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4567)
                       ((_ to_fp 11 53) x0_ack!4572))
               ((_ to_fp 11 53) x0_ack!4572))
       ((_ to_fp 11 53) x1_ack!4567)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4567)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4567)
                       ((_ to_fp 11 53) x0_ack!4572)))
       ((_ to_fp 11 53) x0_ack!4572)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4568))
               ((_ to_fp 11 53) y0_ack!4568))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4568)))
       ((_ to_fp 11 53) y0_ack!4568)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4571)
                           ((_ to_fp 11 53) y0_ack!4568))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4568)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4571)
                           ((_ to_fp 11 53) y0_ack!4568))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4568)))))
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
                                   ((_ to_fp 11 53) y_ack!4571)
                                   ((_ to_fp 11 53) y0_ack!4568))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4568))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4570)
                                   ((_ to_fp 11 53) x0_ack!4572))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4567)
                                   ((_ to_fp 11 53) x0_ack!4572)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!4569))))

(check-sat)
(exit)
