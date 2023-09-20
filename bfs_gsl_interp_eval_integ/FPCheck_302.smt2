(declare-fun x1_ack!3726 () (_ BitVec 64))
(declare-fun x0_ack!3733 () (_ BitVec 64))
(declare-fun x2_ack!3727 () (_ BitVec 64))
(declare-fun b_ack!3732 () (_ BitVec 64))
(declare-fun a_ack!3731 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3728 () (_ BitVec 64))
(declare-fun y1_ack!3729 () (_ BitVec 64))
(declare-fun y2_ack!3730 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3733) ((_ to_fp 11 53) x1_ack!3726)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3726) ((_ to_fp 11 53) x2_ack!3727)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3726)
                       ((_ to_fp 11 53) x0_ack!3733))
               ((_ to_fp 11 53) x0_ack!3733))
       ((_ to_fp 11 53) x1_ack!3726)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3726)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3726)
                       ((_ to_fp 11 53) x0_ack!3733)))
       ((_ to_fp 11 53) x0_ack!3733)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3727)
                       ((_ to_fp 11 53) x1_ack!3726))
               ((_ to_fp 11 53) x1_ack!3726))
       ((_ to_fp 11 53) x2_ack!3727)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3727)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3727)
                       ((_ to_fp 11 53) x1_ack!3726)))
       ((_ to_fp 11 53) x1_ack!3726)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3726)
                    ((_ to_fp 11 53) x0_ack!3733))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3727)
                    ((_ to_fp 11 53) x1_ack!3726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3731) ((_ to_fp 11 53) b_ack!3732))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3731) ((_ to_fp 11 53) x0_ack!3733))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3732) ((_ to_fp 11 53) x2_ack!3727))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3731) ((_ to_fp 11 53) b_ack!3732))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3731) ((_ to_fp 11 53) x0_ack!3733))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3731) ((_ to_fp 11 53) x1_ack!3726)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3726) ((_ to_fp 11 53) a_ack!3731))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3732) ((_ to_fp 11 53) x1_ack!3726))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3732) ((_ to_fp 11 53) x2_ack!3727)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3727)
                    ((_ to_fp 11 53) x1_ack!3726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3730)
                           ((_ to_fp 11 53) y1_ack!3729))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3727)
                                   ((_ to_fp 11 53) x1_ack!3726)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3729)
                           ((_ to_fp 11 53) y0_ack!3728))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3726)
                                   ((_ to_fp 11 53) x0_ack!3733)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3727)
                                   ((_ to_fp 11 53) x1_ack!3726))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3726)
                                   ((_ to_fp 11 53) x0_ack!3733))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3727)
                    ((_ to_fp 11 53) x1_ack!3726)))))))

(check-sat)
(exit)
