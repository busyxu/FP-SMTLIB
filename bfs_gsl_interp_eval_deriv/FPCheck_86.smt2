(declare-fun x1_ack!873 () (_ BitVec 64))
(declare-fun x0_ack!879 () (_ BitVec 64))
(declare-fun x2_ack!874 () (_ BitVec 64))
(declare-fun xx_ack!878 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!875 () (_ BitVec 64))
(declare-fun y1_ack!876 () (_ BitVec 64))
(declare-fun y2_ack!877 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!879) ((_ to_fp 11 53) x1_ack!873)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!873) ((_ to_fp 11 53) x2_ack!874)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!873)
                       ((_ to_fp 11 53) x0_ack!879))
               ((_ to_fp 11 53) x0_ack!879))
       ((_ to_fp 11 53) x1_ack!873)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!873)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!873)
                       ((_ to_fp 11 53) x0_ack!879)))
       ((_ to_fp 11 53) x0_ack!879)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!874)
                       ((_ to_fp 11 53) x1_ack!873))
               ((_ to_fp 11 53) x1_ack!873))
       ((_ to_fp 11 53) x2_ack!874)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!874)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!874)
                       ((_ to_fp 11 53) x1_ack!873)))
       ((_ to_fp 11 53) x1_ack!873)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!873)
                    ((_ to_fp 11 53) x0_ack!879))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!874)
                    ((_ to_fp 11 53) x1_ack!873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!878) ((_ to_fp 11 53) x0_ack!879))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!878) ((_ to_fp 11 53) x2_ack!874))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!878) ((_ to_fp 11 53) x0_ack!879))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!878) ((_ to_fp 11 53) x1_ack!873))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!873)
               ((_ to_fp 11 53) x0_ack!879))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!877)
                           ((_ to_fp 11 53) y1_ack!876))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!874)
                                   ((_ to_fp 11 53) x1_ack!873)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!876)
                           ((_ to_fp 11 53) y0_ack!875))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!873)
                                   ((_ to_fp 11 53) x0_ack!879)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!874)
                                   ((_ to_fp 11 53) x1_ack!873))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!873)
                                   ((_ to_fp 11 53) x0_ack!879))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!873)
                                   ((_ to_fp 11 53) x0_ack!879))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!5)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!878)
            ((_ to_fp 11 53) x0_ack!879)))))))

(check-sat)
(exit)
