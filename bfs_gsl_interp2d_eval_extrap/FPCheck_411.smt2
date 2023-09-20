(declare-fun x1_ack!4468 () (_ BitVec 64))
(declare-fun x0_ack!4473 () (_ BitVec 64))
(declare-fun y0_ack!4469 () (_ BitVec 64))
(declare-fun x_ack!4471 () (_ BitVec 64))
(declare-fun y_ack!4472 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!4470 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4473) ((_ to_fp 11 53) x1_ack!4468))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4469) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4471) ((_ to_fp 11 53) x0_ack!4473))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4471) ((_ to_fp 11 53) x1_ack!4468))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4472) ((_ to_fp 11 53) y0_ack!4469)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4468)
                       ((_ to_fp 11 53) x0_ack!4473))
               ((_ to_fp 11 53) x0_ack!4473))
       ((_ to_fp 11 53) x1_ack!4468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4468)
                       ((_ to_fp 11 53) x0_ack!4473)))
       ((_ to_fp 11 53) x0_ack!4473)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4469))
               ((_ to_fp 11 53) y0_ack!4469))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4469)))
       ((_ to_fp 11 53) y0_ack!4469)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4472)
                           ((_ to_fp 11 53) y0_ack!4469))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4469)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4472)
                           ((_ to_fp 11 53) y0_ack!4469))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4469)))))
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
                                   ((_ to_fp 11 53) x_ack!4471)
                                   ((_ to_fp 11 53) x0_ack!4473))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4468)
                                   ((_ to_fp 11 53) x0_ack!4473)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4472)
                                   ((_ to_fp 11 53) y0_ack!4469))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4469))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!4470)))

(check-sat)
(exit)
