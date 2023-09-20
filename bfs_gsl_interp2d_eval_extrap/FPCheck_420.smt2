(declare-fun x1_ack!4579 () (_ BitVec 64))
(declare-fun x0_ack!4584 () (_ BitVec 64))
(declare-fun y0_ack!4580 () (_ BitVec 64))
(declare-fun x_ack!4582 () (_ BitVec 64))
(declare-fun y_ack!4583 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z3_ack!4581 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4584) ((_ to_fp 11 53) x1_ack!4579))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4580) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4582) ((_ to_fp 11 53) x0_ack!4584))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4582) ((_ to_fp 11 53) x1_ack!4579))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4583) ((_ to_fp 11 53) y0_ack!4580)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4579)
                       ((_ to_fp 11 53) x0_ack!4584))
               ((_ to_fp 11 53) x0_ack!4584))
       ((_ to_fp 11 53) x1_ack!4579)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4579)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4579)
                       ((_ to_fp 11 53) x0_ack!4584)))
       ((_ to_fp 11 53) x0_ack!4584)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4580))
               ((_ to_fp 11 53) y0_ack!4580))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4580)))
       ((_ to_fp 11 53) y0_ack!4580)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4583)
                           ((_ to_fp 11 53) y0_ack!4580))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4580)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4583)
                           ((_ to_fp 11 53) y0_ack!4580))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4580)))))
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
                                   ((_ to_fp 11 53) y_ack!4583)
                                   ((_ to_fp 11 53) y0_ack!4580))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4580))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4582)
                                   ((_ to_fp 11 53) x0_ack!4584))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4579)
                                   ((_ to_fp 11 53) x0_ack!4584)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 z3_ack!4581))))

(check-sat)
(exit)
