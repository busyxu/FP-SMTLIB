(declare-fun x1_ack!4015 () (_ BitVec 64))
(declare-fun x0_ack!4019 () (_ BitVec 64))
(declare-fun y0_ack!4016 () (_ BitVec 64))
(declare-fun x_ack!4017 () (_ BitVec 64))
(declare-fun y_ack!4018 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4019) ((_ to_fp 11 53) x1_ack!4015))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4016) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4017) ((_ to_fp 11 53) x0_ack!4019)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4018) ((_ to_fp 11 53) y0_ack!4016))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4018) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4015)
                       ((_ to_fp 11 53) x0_ack!4019))
               ((_ to_fp 11 53) x0_ack!4019))
       ((_ to_fp 11 53) x1_ack!4015)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4015)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4015)
                       ((_ to_fp 11 53) x0_ack!4019)))
       ((_ to_fp 11 53) x0_ack!4019)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4017)
                           ((_ to_fp 11 53) x0_ack!4019))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4015)
                           ((_ to_fp 11 53) x0_ack!4019)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4017)
                           ((_ to_fp 11 53) x0_ack!4019))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4015)
                           ((_ to_fp 11 53) x0_ack!4019)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
