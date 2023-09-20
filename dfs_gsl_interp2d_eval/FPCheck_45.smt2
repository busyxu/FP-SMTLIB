(declare-fun x1_ack!472 () (_ BitVec 64))
(declare-fun x0_ack!478 () (_ BitVec 64))
(declare-fun y0_ack!473 () (_ BitVec 64))
(declare-fun x_ack!476 () (_ BitVec 64))
(declare-fun y_ack!477 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!475 () (_ BitVec 64))
(declare-fun z0_ack!474 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!478) ((_ to_fp 11 53) x1_ack!472))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!473) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x1_ack!472))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) y0_ack!473))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x1_ack!472))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) y0_ack!473))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!472)
                       ((_ to_fp 11 53) x0_ack!478))
               ((_ to_fp 11 53) x0_ack!478))
       ((_ to_fp 11 53) x1_ack!472)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!472)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!472)
                       ((_ to_fp 11 53) x0_ack!478)))
       ((_ to_fp 11 53) x0_ack!478)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!473))
               ((_ to_fp 11 53) y0_ack!473))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!473)))
       ((_ to_fp 11 53) y0_ack!473)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!476)
                           ((_ to_fp 11 53) x0_ack!478))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!472)
                           ((_ to_fp 11 53) x0_ack!478))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!477)
                                   ((_ to_fp 11 53) y0_ack!473))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!473))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!474))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!475))))))

(check-sat)
(exit)
