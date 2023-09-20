(declare-fun x1_ack!1227 () (_ BitVec 64))
(declare-fun x0_ack!1233 () (_ BitVec 64))
(declare-fun x2_ack!1228 () (_ BitVec 64))
(declare-fun xx_ack!1232 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1229 () (_ BitVec 64))
(declare-fun y1_ack!1230 () (_ BitVec 64))
(declare-fun y2_ack!1231 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1233) ((_ to_fp 11 53) x1_ack!1227)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1227) ((_ to_fp 11 53) x2_ack!1228)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1227)
                       ((_ to_fp 11 53) x0_ack!1233))
               ((_ to_fp 11 53) x0_ack!1233))
       ((_ to_fp 11 53) x1_ack!1227)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1227)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1227)
                       ((_ to_fp 11 53) x0_ack!1233)))
       ((_ to_fp 11 53) x0_ack!1233)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1228)
                       ((_ to_fp 11 53) x1_ack!1227))
               ((_ to_fp 11 53) x1_ack!1227))
       ((_ to_fp 11 53) x2_ack!1228)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1228)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1228)
                       ((_ to_fp 11 53) x1_ack!1227)))
       ((_ to_fp 11 53) x1_ack!1227)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1227)
                    ((_ to_fp 11 53) x0_ack!1233))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1228)
                    ((_ to_fp 11 53) x1_ack!1227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1232) ((_ to_fp 11 53) x0_ack!1233))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1232) ((_ to_fp 11 53) x2_ack!1228))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1232) ((_ to_fp 11 53) x0_ack!1233))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1232) ((_ to_fp 11 53) x1_ack!1227)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1227) ((_ to_fp 11 53) xx_ack!1232))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1228)
               ((_ to_fp 11 53) x1_ack!1227))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1231)
                           ((_ to_fp 11 53) y1_ack!1230))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1228)
                                   ((_ to_fp 11 53) x1_ack!1227)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1230)
                           ((_ to_fp 11 53) y0_ack!1229))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1227)
                                   ((_ to_fp 11 53) x0_ack!1233)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1228)
                                   ((_ to_fp 11 53) x1_ack!1227))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1227)
                                   ((_ to_fp 11 53) x0_ack!1233))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
