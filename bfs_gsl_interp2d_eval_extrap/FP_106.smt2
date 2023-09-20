(declare-fun x1_ack!4557 () (_ BitVec 64))
(declare-fun x0_ack!4561 () (_ BitVec 64))
(declare-fun y0_ack!4558 () (_ BitVec 64))
(declare-fun x_ack!4559 () (_ BitVec 64))
(declare-fun y_ack!4560 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4561) ((_ to_fp 11 53) x1_ack!4557))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4558) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4559) ((_ to_fp 11 53) x0_ack!4561))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4559) ((_ to_fp 11 53) x1_ack!4557))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4560) ((_ to_fp 11 53) y0_ack!4558)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4557)
                       ((_ to_fp 11 53) x0_ack!4561))
               ((_ to_fp 11 53) x0_ack!4561))
       ((_ to_fp 11 53) x1_ack!4557)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4557)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4557)
                       ((_ to_fp 11 53) x0_ack!4561)))
       ((_ to_fp 11 53) x0_ack!4561)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4558))
               ((_ to_fp 11 53) y0_ack!4558))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4558)))
       ((_ to_fp 11 53) y0_ack!4558)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4560)
                           ((_ to_fp 11 53) y0_ack!4558))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4558)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4560)
                           ((_ to_fp 11 53) y0_ack!4558))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4558)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
