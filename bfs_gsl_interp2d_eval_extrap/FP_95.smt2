(declare-fun x1_ack!4105 () (_ BitVec 64))
(declare-fun x0_ack!4109 () (_ BitVec 64))
(declare-fun y0_ack!4106 () (_ BitVec 64))
(declare-fun x_ack!4107 () (_ BitVec 64))
(declare-fun y_ack!4108 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4109) ((_ to_fp 11 53) x1_ack!4105))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4106) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4107) ((_ to_fp 11 53) x0_ack!4109)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4108) ((_ to_fp 11 53) y0_ack!4106))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4108) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4105)
                       ((_ to_fp 11 53) x0_ack!4109))
               ((_ to_fp 11 53) x0_ack!4109))
       ((_ to_fp 11 53) x1_ack!4105)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4105)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4105)
                       ((_ to_fp 11 53) x0_ack!4109)))
       ((_ to_fp 11 53) x0_ack!4109)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4107)
                           ((_ to_fp 11 53) x0_ack!4109))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4105)
                           ((_ to_fp 11 53) x0_ack!4109)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4107)
                           ((_ to_fp 11 53) x0_ack!4109))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4105)
                           ((_ to_fp 11 53) x0_ack!4109)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
