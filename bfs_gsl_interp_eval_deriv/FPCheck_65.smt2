(declare-fun x1_ack!598 () (_ BitVec 64))
(declare-fun x0_ack!604 () (_ BitVec 64))
(declare-fun x2_ack!599 () (_ BitVec 64))
(declare-fun xx_ack!603 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!600 () (_ BitVec 64))
(declare-fun y1_ack!601 () (_ BitVec 64))
(declare-fun y2_ack!602 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!604) ((_ to_fp 11 53) x1_ack!598)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!598) ((_ to_fp 11 53) x2_ack!599)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!598)
                       ((_ to_fp 11 53) x0_ack!604))
               ((_ to_fp 11 53) x0_ack!604))
       ((_ to_fp 11 53) x1_ack!598)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!598)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!598)
                       ((_ to_fp 11 53) x0_ack!604)))
       ((_ to_fp 11 53) x0_ack!604)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!599)
                       ((_ to_fp 11 53) x1_ack!598))
               ((_ to_fp 11 53) x1_ack!598))
       ((_ to_fp 11 53) x2_ack!599)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!599)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!599)
                       ((_ to_fp 11 53) x1_ack!598)))
       ((_ to_fp 11 53) x1_ack!598)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!598)
                    ((_ to_fp 11 53) x0_ack!604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!599)
                    ((_ to_fp 11 53) x1_ack!598))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!603) ((_ to_fp 11 53) x0_ack!604))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!603) ((_ to_fp 11 53) x2_ack!599))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!603) ((_ to_fp 11 53) x0_ack!604))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!603) ((_ to_fp 11 53) x1_ack!598))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!598)
               ((_ to_fp 11 53) x0_ack!604))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!602)
                           ((_ to_fp 11 53) y1_ack!601))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!599)
                                   ((_ to_fp 11 53) x1_ack!598)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!601)
                           ((_ to_fp 11 53) y0_ack!600))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!598)
                                   ((_ to_fp 11 53) x0_ack!604)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!599)
                                   ((_ to_fp 11 53) x1_ack!598))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!598)
                                   ((_ to_fp 11 53) x0_ack!604))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!598)
            ((_ to_fp 11 53) x0_ack!604))
    a!4))))

(check-sat)
(exit)
