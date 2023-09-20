(declare-fun x1_ack!1305 () (_ BitVec 64))
(declare-fun x0_ack!1311 () (_ BitVec 64))
(declare-fun x2_ack!1306 () (_ BitVec 64))
(declare-fun xx_ack!1310 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1307 () (_ BitVec 64))
(declare-fun y1_ack!1308 () (_ BitVec 64))
(declare-fun y2_ack!1309 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1311) ((_ to_fp 11 53) x1_ack!1305)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1305) ((_ to_fp 11 53) x2_ack!1306)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1305)
                       ((_ to_fp 11 53) x0_ack!1311))
               ((_ to_fp 11 53) x0_ack!1311))
       ((_ to_fp 11 53) x1_ack!1305)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1305)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1305)
                       ((_ to_fp 11 53) x0_ack!1311)))
       ((_ to_fp 11 53) x0_ack!1311)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1306)
                       ((_ to_fp 11 53) x1_ack!1305))
               ((_ to_fp 11 53) x1_ack!1305))
       ((_ to_fp 11 53) x2_ack!1306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1306)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1306)
                       ((_ to_fp 11 53) x1_ack!1305)))
       ((_ to_fp 11 53) x1_ack!1305)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1305)
                    ((_ to_fp 11 53) x0_ack!1311))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1306)
                    ((_ to_fp 11 53) x1_ack!1305))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1310) ((_ to_fp 11 53) x0_ack!1311))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1310) ((_ to_fp 11 53) x2_ack!1306))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1310) ((_ to_fp 11 53) x0_ack!1311))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1310) ((_ to_fp 11 53) x1_ack!1305)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1305) ((_ to_fp 11 53) xx_ack!1310))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1306)
               ((_ to_fp 11 53) x1_ack!1305))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1309)
                           ((_ to_fp 11 53) y1_ack!1308))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1306)
                                   ((_ to_fp 11 53) x1_ack!1305)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1308)
                           ((_ to_fp 11 53) y0_ack!1307))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1305)
                                   ((_ to_fp 11 53) x0_ack!1311)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1306)
                                   ((_ to_fp 11 53) x1_ack!1305))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1305)
                                   ((_ to_fp 11 53) x0_ack!1311))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!1306)
            ((_ to_fp 11 53) x1_ack!1305))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
