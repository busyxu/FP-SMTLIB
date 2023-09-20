(declare-fun x1_ack!1390 () (_ BitVec 64))
(declare-fun x0_ack!1396 () (_ BitVec 64))
(declare-fun x2_ack!1391 () (_ BitVec 64))
(declare-fun xx_ack!1395 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1392 () (_ BitVec 64))
(declare-fun y1_ack!1393 () (_ BitVec 64))
(declare-fun y2_ack!1394 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1396) ((_ to_fp 11 53) x1_ack!1390)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1390) ((_ to_fp 11 53) x2_ack!1391)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1390)
                       ((_ to_fp 11 53) x0_ack!1396))
               ((_ to_fp 11 53) x0_ack!1396))
       ((_ to_fp 11 53) x1_ack!1390)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1390)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1390)
                       ((_ to_fp 11 53) x0_ack!1396)))
       ((_ to_fp 11 53) x0_ack!1396)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1391)
                       ((_ to_fp 11 53) x1_ack!1390))
               ((_ to_fp 11 53) x1_ack!1390))
       ((_ to_fp 11 53) x2_ack!1391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1391)
                       ((_ to_fp 11 53) x1_ack!1390)))
       ((_ to_fp 11 53) x1_ack!1390)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1390)
                    ((_ to_fp 11 53) x0_ack!1396))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1391)
                    ((_ to_fp 11 53) x1_ack!1390))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1395) ((_ to_fp 11 53) x0_ack!1396))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1395) ((_ to_fp 11 53) x2_ack!1391))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1395) ((_ to_fp 11 53) x0_ack!1396))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1395) ((_ to_fp 11 53) x1_ack!1390)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1390) ((_ to_fp 11 53) xx_ack!1395))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1391)
               ((_ to_fp 11 53) x1_ack!1390))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1394)
                           ((_ to_fp 11 53) y1_ack!1393))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1391)
                                   ((_ to_fp 11 53) x1_ack!1390)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1393)
                           ((_ to_fp 11 53) y0_ack!1392))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1390)
                                   ((_ to_fp 11 53) x0_ack!1396)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1391)
                                   ((_ to_fp 11 53) x1_ack!1390))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1390)
                                   ((_ to_fp 11 53) x0_ack!1396))))))
  (FPCHECK_FSUB_ACCURACY
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
