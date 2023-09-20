(declare-fun x1_ack!1059 () (_ BitVec 64))
(declare-fun x0_ack!1065 () (_ BitVec 64))
(declare-fun x2_ack!1060 () (_ BitVec 64))
(declare-fun xx_ack!1064 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1061 () (_ BitVec 64))
(declare-fun y1_ack!1062 () (_ BitVec 64))
(declare-fun y2_ack!1063 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1065) ((_ to_fp 11 53) x1_ack!1059)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1059) ((_ to_fp 11 53) x2_ack!1060)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1059)
                       ((_ to_fp 11 53) x0_ack!1065))
               ((_ to_fp 11 53) x0_ack!1065))
       ((_ to_fp 11 53) x1_ack!1059)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1059)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1059)
                       ((_ to_fp 11 53) x0_ack!1065)))
       ((_ to_fp 11 53) x0_ack!1065)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1060)
                       ((_ to_fp 11 53) x1_ack!1059))
               ((_ to_fp 11 53) x1_ack!1059))
       ((_ to_fp 11 53) x2_ack!1060)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1060)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1060)
                       ((_ to_fp 11 53) x1_ack!1059)))
       ((_ to_fp 11 53) x1_ack!1059)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1059)
                    ((_ to_fp 11 53) x0_ack!1065))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1060)
                    ((_ to_fp 11 53) x1_ack!1059))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1064) ((_ to_fp 11 53) x0_ack!1065))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1064) ((_ to_fp 11 53) x2_ack!1060))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1064) ((_ to_fp 11 53) x0_ack!1065))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1064) ((_ to_fp 11 53) x1_ack!1059))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1059)
               ((_ to_fp 11 53) x0_ack!1065))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1063)
                           ((_ to_fp 11 53) y1_ack!1062))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1060)
                                   ((_ to_fp 11 53) x1_ack!1059)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1062)
                           ((_ to_fp 11 53) y0_ack!1061))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1059)
                                   ((_ to_fp 11 53) x0_ack!1065)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1060)
                                   ((_ to_fp 11 53) x1_ack!1059))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1059)
                                   ((_ to_fp 11 53) x0_ack!1065))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1059)
                                   ((_ to_fp 11 53) x0_ack!1065))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1059)
                                   ((_ to_fp 11 53) x0_ack!1065))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1062)
                                   ((_ to_fp 11 53) y0_ack!1061))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1059)
                                   ((_ to_fp 11 53) x0_ack!1065)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1064)
                                   ((_ to_fp 11 53) x0_ack!1065))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1064)
                                   ((_ to_fp 11 53) x0_ack!1065))
                           a!8))))
  (FPCHECK_FADD_ACCURACY
    y0_ack!1061
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1064)
                    ((_ to_fp 11 53) x0_ack!1065))
            a!9))))))))

(check-sat)
(exit)
