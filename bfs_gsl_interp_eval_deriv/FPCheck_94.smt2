(declare-fun x1_ack!978 () (_ BitVec 64))
(declare-fun x0_ack!984 () (_ BitVec 64))
(declare-fun x2_ack!979 () (_ BitVec 64))
(declare-fun xx_ack!983 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!980 () (_ BitVec 64))
(declare-fun y1_ack!981 () (_ BitVec 64))
(declare-fun y2_ack!982 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!984) ((_ to_fp 11 53) x1_ack!978)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!978) ((_ to_fp 11 53) x2_ack!979)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!978)
                       ((_ to_fp 11 53) x0_ack!984))
               ((_ to_fp 11 53) x0_ack!984))
       ((_ to_fp 11 53) x1_ack!978)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!978)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!978)
                       ((_ to_fp 11 53) x0_ack!984)))
       ((_ to_fp 11 53) x0_ack!984)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!979)
                       ((_ to_fp 11 53) x1_ack!978))
               ((_ to_fp 11 53) x1_ack!978))
       ((_ to_fp 11 53) x2_ack!979)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!979)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!979)
                       ((_ to_fp 11 53) x1_ack!978)))
       ((_ to_fp 11 53) x1_ack!978)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!978)
                    ((_ to_fp 11 53) x0_ack!984))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!979)
                    ((_ to_fp 11 53) x1_ack!978))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!983) ((_ to_fp 11 53) x0_ack!984))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!983) ((_ to_fp 11 53) x2_ack!979))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!983) ((_ to_fp 11 53) x0_ack!984))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!983) ((_ to_fp 11 53) x1_ack!978))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!978)
               ((_ to_fp 11 53) x0_ack!984))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!982)
                           ((_ to_fp 11 53) y1_ack!981))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!979)
                                   ((_ to_fp 11 53) x1_ack!978)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!981)
                           ((_ to_fp 11 53) y0_ack!980))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!978)
                                   ((_ to_fp 11 53) x0_ack!984)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!979)
                                   ((_ to_fp 11 53) x1_ack!978))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!978)
                                   ((_ to_fp 11 53) x0_ack!984))))))
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
                                   ((_ to_fp 11 53) x1_ack!978)
                                   ((_ to_fp 11 53) x0_ack!984))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!5)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!983)
                                   ((_ to_fp 11 53) x0_ack!984))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!983)
            ((_ to_fp 11 53) x0_ack!984))
    a!6))))))

(check-sat)
(exit)
