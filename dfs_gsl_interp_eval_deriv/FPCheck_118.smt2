(declare-fun x1_ack!1300 () (_ BitVec 64))
(declare-fun x0_ack!1306 () (_ BitVec 64))
(declare-fun x2_ack!1301 () (_ BitVec 64))
(declare-fun xx_ack!1305 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1302 () (_ BitVec 64))
(declare-fun y1_ack!1303 () (_ BitVec 64))
(declare-fun y2_ack!1304 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1306) ((_ to_fp 11 53) x1_ack!1300)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1300) ((_ to_fp 11 53) x2_ack!1301)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1300)
                       ((_ to_fp 11 53) x0_ack!1306))
               ((_ to_fp 11 53) x0_ack!1306))
       ((_ to_fp 11 53) x1_ack!1300)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1300)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1300)
                       ((_ to_fp 11 53) x0_ack!1306)))
       ((_ to_fp 11 53) x0_ack!1306)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1301)
                       ((_ to_fp 11 53) x1_ack!1300))
               ((_ to_fp 11 53) x1_ack!1300))
       ((_ to_fp 11 53) x2_ack!1301)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1301)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1301)
                       ((_ to_fp 11 53) x1_ack!1300)))
       ((_ to_fp 11 53) x1_ack!1300)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1300)
                    ((_ to_fp 11 53) x0_ack!1306))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1301)
                    ((_ to_fp 11 53) x1_ack!1300))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1305) ((_ to_fp 11 53) x0_ack!1306))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1305) ((_ to_fp 11 53) x2_ack!1301))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1305) ((_ to_fp 11 53) x0_ack!1306))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1305) ((_ to_fp 11 53) x1_ack!1300))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1300)
               ((_ to_fp 11 53) x0_ack!1306))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1304)
                           ((_ to_fp 11 53) y1_ack!1303))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1301)
                                   ((_ to_fp 11 53) x1_ack!1300)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1303)
                           ((_ to_fp 11 53) y0_ack!1302))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1300)
                                   ((_ to_fp 11 53) x0_ack!1306)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1301)
                                   ((_ to_fp 11 53) x1_ack!1300))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1300)
                                   ((_ to_fp 11 53) x0_ack!1306))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!1300)
            ((_ to_fp 11 53) x0_ack!1306))
    a!4))))

(check-sat)
(exit)
