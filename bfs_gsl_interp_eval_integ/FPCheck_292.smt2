(declare-fun x1_ack!3595 () (_ BitVec 64))
(declare-fun x0_ack!3602 () (_ BitVec 64))
(declare-fun x2_ack!3596 () (_ BitVec 64))
(declare-fun b_ack!3601 () (_ BitVec 64))
(declare-fun a_ack!3600 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3597 () (_ BitVec 64))
(declare-fun y1_ack!3598 () (_ BitVec 64))
(declare-fun y2_ack!3599 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3602) ((_ to_fp 11 53) x1_ack!3595)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3595) ((_ to_fp 11 53) x2_ack!3596)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3595)
                       ((_ to_fp 11 53) x0_ack!3602))
               ((_ to_fp 11 53) x0_ack!3602))
       ((_ to_fp 11 53) x1_ack!3595)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3595)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3595)
                       ((_ to_fp 11 53) x0_ack!3602)))
       ((_ to_fp 11 53) x0_ack!3602)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3596)
                       ((_ to_fp 11 53) x1_ack!3595))
               ((_ to_fp 11 53) x1_ack!3595))
       ((_ to_fp 11 53) x2_ack!3596)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3596)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3596)
                       ((_ to_fp 11 53) x1_ack!3595)))
       ((_ to_fp 11 53) x1_ack!3595)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3595)
                    ((_ to_fp 11 53) x0_ack!3602))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3596)
                    ((_ to_fp 11 53) x1_ack!3595))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3600) ((_ to_fp 11 53) b_ack!3601))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3600) ((_ to_fp 11 53) x0_ack!3602))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3601) ((_ to_fp 11 53) x2_ack!3596))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3600) ((_ to_fp 11 53) b_ack!3601))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3600) ((_ to_fp 11 53) x0_ack!3602))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3600) ((_ to_fp 11 53) x1_ack!3595)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3595) ((_ to_fp 11 53) a_ack!3600))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3601) ((_ to_fp 11 53) x1_ack!3595))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3601) ((_ to_fp 11 53) x2_ack!3596)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3596)
                    ((_ to_fp 11 53) x1_ack!3595))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3599)
                           ((_ to_fp 11 53) y1_ack!3598))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3596)
                                   ((_ to_fp 11 53) x1_ack!3595)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3598)
                           ((_ to_fp 11 53) y0_ack!3597))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3595)
                                   ((_ to_fp 11 53) x0_ack!3602)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3596)
                                   ((_ to_fp 11 53) x1_ack!3595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3595)
                                   ((_ to_fp 11 53) x0_ack!3602))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3596)
                                   ((_ to_fp 11 53) x1_ack!3595))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!3599)
                    ((_ to_fp 11 53) y1_ack!3598))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3596)
                    ((_ to_fp 11 53) x1_ack!3595)))
    a!5)))))

(check-sat)
(exit)
