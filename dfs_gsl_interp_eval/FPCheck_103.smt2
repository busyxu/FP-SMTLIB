(declare-fun x1_ack!1121 () (_ BitVec 64))
(declare-fun x0_ack!1127 () (_ BitVec 64))
(declare-fun x2_ack!1122 () (_ BitVec 64))
(declare-fun xx_ack!1126 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1123 () (_ BitVec 64))
(declare-fun y1_ack!1124 () (_ BitVec 64))
(declare-fun y2_ack!1125 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1127) ((_ to_fp 11 53) x1_ack!1121)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1121) ((_ to_fp 11 53) x2_ack!1122)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1121)
                       ((_ to_fp 11 53) x0_ack!1127))
               ((_ to_fp 11 53) x0_ack!1127))
       ((_ to_fp 11 53) x1_ack!1121)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1121)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1121)
                       ((_ to_fp 11 53) x0_ack!1127)))
       ((_ to_fp 11 53) x0_ack!1127)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1122)
                       ((_ to_fp 11 53) x1_ack!1121))
               ((_ to_fp 11 53) x1_ack!1121))
       ((_ to_fp 11 53) x2_ack!1122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1122)
                       ((_ to_fp 11 53) x1_ack!1121)))
       ((_ to_fp 11 53) x1_ack!1121)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1121)
                    ((_ to_fp 11 53) x0_ack!1127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1122)
                    ((_ to_fp 11 53) x1_ack!1121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x0_ack!1127))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x2_ack!1122))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x0_ack!1127))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x1_ack!1121)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1121) ((_ to_fp 11 53) xx_ack!1126))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1122)
               ((_ to_fp 11 53) x1_ack!1121))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1125)
                           ((_ to_fp 11 53) y1_ack!1124))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1122)
                                   ((_ to_fp 11 53) x1_ack!1121)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1124)
                           ((_ to_fp 11 53) y0_ack!1123))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1121)
                                   ((_ to_fp 11 53) x0_ack!1127)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1122)
                                   ((_ to_fp 11 53) x1_ack!1121))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1121)
                                   ((_ to_fp 11 53) x0_ack!1127))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1122)
                           ((_ to_fp 11 53) x1_ack!1121))
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
                                   ((_ to_fp 11 53) x2_ack!1122)
                                   ((_ to_fp 11 53) x1_ack!1121))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1125)
                                   ((_ to_fp 11 53) y1_ack!1124))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1122)
                                   ((_ to_fp 11 53) x1_ack!1121)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1126)
                                   ((_ to_fp 11 53) x1_ack!1121))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1126)
                                   ((_ to_fp 11 53) x1_ack!1121))
                           a!8))))
  (FPCHECK_FADD_ACCURACY
    y1_ack!1124
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1126)
                    ((_ to_fp 11 53) x1_ack!1121))
            a!9))))))))

(check-sat)
(exit)
