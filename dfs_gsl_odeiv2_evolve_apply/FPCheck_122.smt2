(declare-fun t_ack!1085 () (_ BitVec 64))
(declare-fun t1_ack!1086 () (_ BitVec 64))
(declare-fun h_ack!1089 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1087 () (_ BitVec 64))
(declare-fun y1_ack!1088 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1086)
                    ((_ to_fp 11 53) t_ack!1085))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1086)
               ((_ to_fp 11 53) t_ack!1085))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1089) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1086)
                ((_ to_fp 11 53) t_ack!1085))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1089)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1086)
               ((_ to_fp 11 53) t_ack!1085))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1086)
                           ((_ to_fp 11 53) t_ack!1085))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1088))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1087)
                                   ((_ to_fp 11 53) y0_ack!1087))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1087))
                           a!2)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1087))
                           a!2)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1087)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1088)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1087)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1088)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1087)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) y1_ack!1088))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!1088))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1088)
                                   a!3))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1088)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!1087)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!1086)
                                   ((_ to_fp 11 53) t_ack!1085))
                           a!4)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!1086)
                            ((_ to_fp 11 53) t_ack!1085))
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb0000000000000)
                                    (fp.sub roundNearestTiesToEven a!7 a!9))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!1088)
                                    a!10))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!5)
    a!11)))))))

(check-sat)
(exit)
