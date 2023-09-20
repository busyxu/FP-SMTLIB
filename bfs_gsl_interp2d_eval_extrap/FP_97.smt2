(declare-fun x1_ack!4206 () (_ BitVec 64))
(declare-fun x0_ack!4210 () (_ BitVec 64))
(declare-fun y0_ack!4207 () (_ BitVec 64))
(declare-fun x_ack!4208 () (_ BitVec 64))
(declare-fun y_ack!4209 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4210) ((_ to_fp 11 53) x1_ack!4206))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4207) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4208) ((_ to_fp 11 53) x0_ack!4210)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4209) ((_ to_fp 11 53) y0_ack!4207))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4209) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4206)
                       ((_ to_fp 11 53) x0_ack!4210))
               ((_ to_fp 11 53) x0_ack!4210))
       ((_ to_fp 11 53) x1_ack!4206)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4206)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4206)
                       ((_ to_fp 11 53) x0_ack!4210)))
       ((_ to_fp 11 53) x0_ack!4210)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4208)
                           ((_ to_fp 11 53) x0_ack!4210))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4206)
                           ((_ to_fp 11 53) x0_ack!4210)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4208)
                           ((_ to_fp 11 53) x0_ack!4210))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4206)
                           ((_ to_fp 11 53) x0_ack!4210)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
