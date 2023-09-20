(declare-fun x1_ack!1075 () (_ BitVec 64))
(declare-fun x0_ack!1081 () (_ BitVec 64))
(declare-fun x2_ack!1076 () (_ BitVec 64))
(declare-fun xx_ack!1080 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1077 () (_ BitVec 64))
(declare-fun y1_ack!1078 () (_ BitVec 64))
(declare-fun y2_ack!1079 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1081) ((_ to_fp 11 53) x1_ack!1075)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1075) ((_ to_fp 11 53) x2_ack!1076)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1075)
                       ((_ to_fp 11 53) x0_ack!1081))
               ((_ to_fp 11 53) x0_ack!1081))
       ((_ to_fp 11 53) x1_ack!1075)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1075)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1075)
                       ((_ to_fp 11 53) x0_ack!1081)))
       ((_ to_fp 11 53) x0_ack!1081)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1076)
                       ((_ to_fp 11 53) x1_ack!1075))
               ((_ to_fp 11 53) x1_ack!1075))
       ((_ to_fp 11 53) x2_ack!1076)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1076)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1076)
                       ((_ to_fp 11 53) x1_ack!1075)))
       ((_ to_fp 11 53) x1_ack!1075)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1075)
                    ((_ to_fp 11 53) x0_ack!1081))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1076)
                    ((_ to_fp 11 53) x1_ack!1075))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1080) ((_ to_fp 11 53) x0_ack!1081))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1080) ((_ to_fp 11 53) x2_ack!1076))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1080) ((_ to_fp 11 53) x0_ack!1081))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1080) ((_ to_fp 11 53) x1_ack!1075)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1075) ((_ to_fp 11 53) xx_ack!1080))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1076)
               ((_ to_fp 11 53) x1_ack!1075))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1079)
                           ((_ to_fp 11 53) y1_ack!1078))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1076)
                                   ((_ to_fp 11 53) x1_ack!1075)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1078)
                           ((_ to_fp 11 53) y0_ack!1077))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1075)
                                   ((_ to_fp 11 53) x0_ack!1081)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1076)
                                   ((_ to_fp 11 53) x1_ack!1075))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1075)
                                   ((_ to_fp 11 53) x0_ack!1081))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1076)
                           ((_ to_fp 11 53) x1_ack!1075))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1076)
                                   ((_ to_fp 11 53) x1_ack!1075))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1079)
                                   ((_ to_fp 11 53) y1_ack!1078))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1076)
                                   ((_ to_fp 11 53) x1_ack!1075)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1080)
                                   ((_ to_fp 11 53) x1_ack!1075))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1080)
                                   ((_ to_fp 11 53) x1_ack!1075))
                           a!8))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1080)
            ((_ to_fp 11 53) x1_ack!1075))
    a!9)))))))

(check-sat)
(exit)
