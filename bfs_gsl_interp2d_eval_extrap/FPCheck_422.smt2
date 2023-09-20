(declare-fun x1_ack!4613 () (_ BitVec 64))
(declare-fun x0_ack!4619 () (_ BitVec 64))
(declare-fun y0_ack!4614 () (_ BitVec 64))
(declare-fun x_ack!4617 () (_ BitVec 64))
(declare-fun y_ack!4618 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!4616 () (_ BitVec 64))
(declare-fun z0_ack!4615 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4619) ((_ to_fp 11 53) x1_ack!4613))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4614) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4617) ((_ to_fp 11 53) x0_ack!4619))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4617) ((_ to_fp 11 53) x1_ack!4613))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4618) ((_ to_fp 11 53) y0_ack!4614)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4613)
                       ((_ to_fp 11 53) x0_ack!4619))
               ((_ to_fp 11 53) x0_ack!4619))
       ((_ to_fp 11 53) x1_ack!4613)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4613)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4613)
                       ((_ to_fp 11 53) x0_ack!4619)))
       ((_ to_fp 11 53) x0_ack!4619)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4614))
               ((_ to_fp 11 53) y0_ack!4614))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4614)))
       ((_ to_fp 11 53) y0_ack!4614)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4618)
                           ((_ to_fp 11 53) y0_ack!4614))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4614)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4618)
                           ((_ to_fp 11 53) y0_ack!4614))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4614)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4617)
                           ((_ to_fp 11 53) x0_ack!4619))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4613)
                           ((_ to_fp 11 53) x0_ack!4619))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4618)
                                   ((_ to_fp 11 53) y0_ack!4614))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4614))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!4615))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!4616))))))

(check-sat)
(exit)
