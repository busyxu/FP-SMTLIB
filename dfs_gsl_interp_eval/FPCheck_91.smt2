(declare-fun x1_ack!951 () (_ BitVec 64))
(declare-fun x0_ack!957 () (_ BitVec 64))
(declare-fun x2_ack!952 () (_ BitVec 64))
(declare-fun xx_ack!956 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!953 () (_ BitVec 64))
(declare-fun y1_ack!954 () (_ BitVec 64))
(declare-fun y2_ack!955 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!957) ((_ to_fp 11 53) x1_ack!951)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!951) ((_ to_fp 11 53) x2_ack!952)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!951)
                       ((_ to_fp 11 53) x0_ack!957))
               ((_ to_fp 11 53) x0_ack!957))
       ((_ to_fp 11 53) x1_ack!951)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!951)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!951)
                       ((_ to_fp 11 53) x0_ack!957)))
       ((_ to_fp 11 53) x0_ack!957)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!952)
                       ((_ to_fp 11 53) x1_ack!951))
               ((_ to_fp 11 53) x1_ack!951))
       ((_ to_fp 11 53) x2_ack!952)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!952)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!952)
                       ((_ to_fp 11 53) x1_ack!951)))
       ((_ to_fp 11 53) x1_ack!951)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!951)
                    ((_ to_fp 11 53) x0_ack!957))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!952)
                    ((_ to_fp 11 53) x1_ack!951))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!956) ((_ to_fp 11 53) x0_ack!957))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!956) ((_ to_fp 11 53) x2_ack!952))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!956) ((_ to_fp 11 53) x0_ack!957))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!956) ((_ to_fp 11 53) x1_ack!951)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!951) ((_ to_fp 11 53) xx_ack!956))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!952)
               ((_ to_fp 11 53) x1_ack!951))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!955)
                           ((_ to_fp 11 53) y1_ack!954))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!952)
                                   ((_ to_fp 11 53) x1_ack!951)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!954)
                           ((_ to_fp 11 53) y0_ack!953))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!951)
                                   ((_ to_fp 11 53) x0_ack!957)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!952)
                                   ((_ to_fp 11 53) x1_ack!951))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!951)
                                   ((_ to_fp 11 53) x0_ack!957))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!952)
                                   ((_ to_fp 11 53) x1_ack!951))))))
  (FPCHECK_FADD_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!956)
                    ((_ to_fp 11 53) x1_ack!951))
            a!5))))))

(check-sat)
(exit)
