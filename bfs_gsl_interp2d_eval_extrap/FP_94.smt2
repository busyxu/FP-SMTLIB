(declare-fun x1_ack!4065 () (_ BitVec 64))
(declare-fun x0_ack!4069 () (_ BitVec 64))
(declare-fun y0_ack!4066 () (_ BitVec 64))
(declare-fun x_ack!4067 () (_ BitVec 64))
(declare-fun y_ack!4068 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4069) ((_ to_fp 11 53) x1_ack!4065))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4066) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4067) ((_ to_fp 11 53) x0_ack!4069)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4068) ((_ to_fp 11 53) y0_ack!4066))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4068) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4065)
                       ((_ to_fp 11 53) x0_ack!4069))
               ((_ to_fp 11 53) x0_ack!4069))
       ((_ to_fp 11 53) x1_ack!4065)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4065)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4065)
                       ((_ to_fp 11 53) x0_ack!4069)))
       ((_ to_fp 11 53) x0_ack!4069)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4067)
                           ((_ to_fp 11 53) x0_ack!4069))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4065)
                           ((_ to_fp 11 53) x0_ack!4069)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4067)
                           ((_ to_fp 11 53) x0_ack!4069))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4065)
                           ((_ to_fp 11 53) x0_ack!4069)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
