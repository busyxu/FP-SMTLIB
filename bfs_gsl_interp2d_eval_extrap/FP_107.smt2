(declare-fun x1_ack!4603 () (_ BitVec 64))
(declare-fun x0_ack!4607 () (_ BitVec 64))
(declare-fun y0_ack!4604 () (_ BitVec 64))
(declare-fun x_ack!4605 () (_ BitVec 64))
(declare-fun y_ack!4606 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4607) ((_ to_fp 11 53) x1_ack!4603))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4604) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4605) ((_ to_fp 11 53) x0_ack!4607))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4605) ((_ to_fp 11 53) x1_ack!4603))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4606) ((_ to_fp 11 53) y0_ack!4604)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4603)
                       ((_ to_fp 11 53) x0_ack!4607))
               ((_ to_fp 11 53) x0_ack!4607))
       ((_ to_fp 11 53) x1_ack!4603)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4603)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4603)
                       ((_ to_fp 11 53) x0_ack!4607)))
       ((_ to_fp 11 53) x0_ack!4607)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4604))
               ((_ to_fp 11 53) y0_ack!4604))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4604)))
       ((_ to_fp 11 53) y0_ack!4604)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4606)
                           ((_ to_fp 11 53) y0_ack!4604))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4604)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4606)
                           ((_ to_fp 11 53) y0_ack!4604))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4604)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
