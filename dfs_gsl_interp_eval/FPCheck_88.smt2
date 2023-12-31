(declare-fun x1_ack!905 () (_ BitVec 64))
(declare-fun x0_ack!911 () (_ BitVec 64))
(declare-fun x2_ack!906 () (_ BitVec 64))
(declare-fun xx_ack!910 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!907 () (_ BitVec 64))
(declare-fun y1_ack!908 () (_ BitVec 64))
(declare-fun y2_ack!909 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!911) ((_ to_fp 11 53) x1_ack!905)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!905) ((_ to_fp 11 53) x2_ack!906)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!905)
                       ((_ to_fp 11 53) x0_ack!911))
               ((_ to_fp 11 53) x0_ack!911))
       ((_ to_fp 11 53) x1_ack!905)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!905)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!905)
                       ((_ to_fp 11 53) x0_ack!911)))
       ((_ to_fp 11 53) x0_ack!911)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!906)
                       ((_ to_fp 11 53) x1_ack!905))
               ((_ to_fp 11 53) x1_ack!905))
       ((_ to_fp 11 53) x2_ack!906)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!906)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!906)
                       ((_ to_fp 11 53) x1_ack!905)))
       ((_ to_fp 11 53) x1_ack!905)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!905)
                    ((_ to_fp 11 53) x0_ack!911))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!906)
                    ((_ to_fp 11 53) x1_ack!905))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!910) ((_ to_fp 11 53) x0_ack!911))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!910) ((_ to_fp 11 53) x2_ack!906))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!910) ((_ to_fp 11 53) x0_ack!911))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!910) ((_ to_fp 11 53) x1_ack!905)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!905) ((_ to_fp 11 53) xx_ack!910))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!906)
               ((_ to_fp 11 53) x1_ack!905))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!909)
                           ((_ to_fp 11 53) y1_ack!908))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!906)
                                   ((_ to_fp 11 53) x1_ack!905)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!908)
                           ((_ to_fp 11 53) y0_ack!907))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!905)
                                   ((_ to_fp 11 53) x0_ack!911)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!906)
                                   ((_ to_fp 11 53) x1_ack!905))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!905)
                                   ((_ to_fp 11 53) x0_ack!911))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!906)
                                   ((_ to_fp 11 53) x1_ack!905))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!910)
            ((_ to_fp 11 53) x1_ack!905))
    a!5)))))

(check-sat)
(exit)
