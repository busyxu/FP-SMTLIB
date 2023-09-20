(declare-fun x1_ack!3920 () (_ BitVec 64))
(declare-fun x0_ack!3927 () (_ BitVec 64))
(declare-fun x2_ack!3921 () (_ BitVec 64))
(declare-fun b_ack!3926 () (_ BitVec 64))
(declare-fun a_ack!3925 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!3922 () (_ BitVec 64))
(declare-fun y1_ack!3923 () (_ BitVec 64))
(declare-fun y2_ack!3924 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3927) ((_ to_fp 11 53) x1_ack!3920)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3920) ((_ to_fp 11 53) x2_ack!3921)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3920)
                       ((_ to_fp 11 53) x0_ack!3927))
               ((_ to_fp 11 53) x0_ack!3927))
       ((_ to_fp 11 53) x1_ack!3920)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3920)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3920)
                       ((_ to_fp 11 53) x0_ack!3927)))
       ((_ to_fp 11 53) x0_ack!3927)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3921)
                       ((_ to_fp 11 53) x1_ack!3920))
               ((_ to_fp 11 53) x1_ack!3920))
       ((_ to_fp 11 53) x2_ack!3921)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3921)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3921)
                       ((_ to_fp 11 53) x1_ack!3920)))
       ((_ to_fp 11 53) x1_ack!3920)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3920)
                    ((_ to_fp 11 53) x0_ack!3927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3921)
                    ((_ to_fp 11 53) x1_ack!3920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3925) ((_ to_fp 11 53) b_ack!3926))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3925) ((_ to_fp 11 53) x0_ack!3927))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3926) ((_ to_fp 11 53) x2_ack!3921))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3925) ((_ to_fp 11 53) b_ack!3926))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3925) ((_ to_fp 11 53) x0_ack!3927))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3925) ((_ to_fp 11 53) x1_ack!3920))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3926) ((_ to_fp 11 53) x0_ack!3927))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3926) ((_ to_fp 11 53) x1_ack!3920))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3920)
                    ((_ to_fp 11 53) x0_ack!3927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3924)
                           ((_ to_fp 11 53) y1_ack!3923))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3921)
                                   ((_ to_fp 11 53) x1_ack!3920)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3923)
                           ((_ to_fp 11 53) y0_ack!3922))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3920)
                                   ((_ to_fp 11 53) x0_ack!3927)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3921)
                                   ((_ to_fp 11 53) x1_ack!3920))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3920)
                                   ((_ to_fp 11 53) x0_ack!3927))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3920)
                    ((_ to_fp 11 53) x0_ack!3927))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
