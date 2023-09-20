(declare-fun x1_ack!976 () (_ BitVec 64))
(declare-fun x0_ack!982 () (_ BitVec 64))
(declare-fun x2_ack!977 () (_ BitVec 64))
(declare-fun xx_ack!981 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!978 () (_ BitVec 64))
(declare-fun y1_ack!979 () (_ BitVec 64))
(declare-fun y2_ack!980 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!982) ((_ to_fp 11 53) x1_ack!976)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!976) ((_ to_fp 11 53) x2_ack!977)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!976)
                       ((_ to_fp 11 53) x0_ack!982))
               ((_ to_fp 11 53) x0_ack!982))
       ((_ to_fp 11 53) x1_ack!976)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!976)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!976)
                       ((_ to_fp 11 53) x0_ack!982)))
       ((_ to_fp 11 53) x0_ack!982)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!977)
                       ((_ to_fp 11 53) x1_ack!976))
               ((_ to_fp 11 53) x1_ack!976))
       ((_ to_fp 11 53) x2_ack!977)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!977)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!977)
                       ((_ to_fp 11 53) x1_ack!976)))
       ((_ to_fp 11 53) x1_ack!976)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!976)
                    ((_ to_fp 11 53) x0_ack!982))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!977)
                    ((_ to_fp 11 53) x1_ack!976))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!981) ((_ to_fp 11 53) x0_ack!982))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!981) ((_ to_fp 11 53) x2_ack!977))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!981) ((_ to_fp 11 53) x0_ack!982))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!981) ((_ to_fp 11 53) x1_ack!976)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!976) ((_ to_fp 11 53) xx_ack!981))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!977)
               ((_ to_fp 11 53) x1_ack!976))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!980)
                           ((_ to_fp 11 53) y1_ack!979))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!977)
                                   ((_ to_fp 11 53) x1_ack!976)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!979)
                           ((_ to_fp 11 53) y0_ack!978))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!976)
                                   ((_ to_fp 11 53) x0_ack!982)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!977)
                                   ((_ to_fp 11 53) x1_ack!976))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!976)
                                   ((_ to_fp 11 53) x0_ack!982))))))
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
                                   ((_ to_fp 11 53) x2_ack!977)
                                   ((_ to_fp 11 53) x1_ack!976))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!981)
                                   ((_ to_fp 11 53) x1_ack!976))
                           a!5))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!981)
            ((_ to_fp 11 53) x1_ack!976))
    a!6))))))

(check-sat)
(exit)
