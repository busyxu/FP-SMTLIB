(declare-fun x1_ack!1376 () (_ BitVec 64))
(declare-fun x0_ack!1382 () (_ BitVec 64))
(declare-fun x2_ack!1377 () (_ BitVec 64))
(declare-fun xx_ack!1381 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1378 () (_ BitVec 64))
(declare-fun y1_ack!1379 () (_ BitVec 64))
(declare-fun y2_ack!1380 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1382) ((_ to_fp 11 53) x1_ack!1376)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1376) ((_ to_fp 11 53) x2_ack!1377)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1376)
                       ((_ to_fp 11 53) x0_ack!1382))
               ((_ to_fp 11 53) x0_ack!1382))
       ((_ to_fp 11 53) x1_ack!1376)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1376)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1376)
                       ((_ to_fp 11 53) x0_ack!1382)))
       ((_ to_fp 11 53) x0_ack!1382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1377)
                       ((_ to_fp 11 53) x1_ack!1376))
               ((_ to_fp 11 53) x1_ack!1376))
       ((_ to_fp 11 53) x2_ack!1377)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1377)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1377)
                       ((_ to_fp 11 53) x1_ack!1376)))
       ((_ to_fp 11 53) x1_ack!1376)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1376)
                    ((_ to_fp 11 53) x0_ack!1382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1377)
                    ((_ to_fp 11 53) x1_ack!1376))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1381) ((_ to_fp 11 53) x0_ack!1382))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1381) ((_ to_fp 11 53) x2_ack!1377))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1381) ((_ to_fp 11 53) x0_ack!1382))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1381) ((_ to_fp 11 53) x1_ack!1376)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1376) ((_ to_fp 11 53) xx_ack!1381))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1377)
               ((_ to_fp 11 53) x1_ack!1376))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1380)
                           ((_ to_fp 11 53) y1_ack!1379))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1377)
                                   ((_ to_fp 11 53) x1_ack!1376)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1379)
                           ((_ to_fp 11 53) y0_ack!1378))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1376)
                                   ((_ to_fp 11 53) x0_ack!1382)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1377)
                                   ((_ to_fp 11 53) x1_ack!1376))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1376)
                                   ((_ to_fp 11 53) x0_ack!1382))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
