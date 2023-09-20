(declare-fun x1_ack!3918 () (_ BitVec 64))
(declare-fun x0_ack!3925 () (_ BitVec 64))
(declare-fun x2_ack!3919 () (_ BitVec 64))
(declare-fun b_ack!3924 () (_ BitVec 64))
(declare-fun a_ack!3923 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3920 () (_ BitVec 64))
(declare-fun y1_ack!3921 () (_ BitVec 64))
(declare-fun y2_ack!3922 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3925) ((_ to_fp 11 53) x1_ack!3918)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3918) ((_ to_fp 11 53) x2_ack!3919)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3918)
                       ((_ to_fp 11 53) x0_ack!3925))
               ((_ to_fp 11 53) x0_ack!3925))
       ((_ to_fp 11 53) x1_ack!3918)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3918)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3918)
                       ((_ to_fp 11 53) x0_ack!3925)))
       ((_ to_fp 11 53) x0_ack!3925)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3919)
                       ((_ to_fp 11 53) x1_ack!3918))
               ((_ to_fp 11 53) x1_ack!3918))
       ((_ to_fp 11 53) x2_ack!3919)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3919)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3919)
                       ((_ to_fp 11 53) x1_ack!3918)))
       ((_ to_fp 11 53) x1_ack!3918)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3918)
                    ((_ to_fp 11 53) x0_ack!3925))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3919)
                    ((_ to_fp 11 53) x1_ack!3918))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3923) ((_ to_fp 11 53) b_ack!3924))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3923) ((_ to_fp 11 53) x0_ack!3925))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3924) ((_ to_fp 11 53) x2_ack!3919))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3923) ((_ to_fp 11 53) b_ack!3924))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3923) ((_ to_fp 11 53) x0_ack!3925))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3923) ((_ to_fp 11 53) x1_ack!3918))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3924) ((_ to_fp 11 53) x0_ack!3925))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3924) ((_ to_fp 11 53) x1_ack!3918))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3918)
                    ((_ to_fp 11 53) x0_ack!3925))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3922)
                           ((_ to_fp 11 53) y1_ack!3921))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3919)
                                   ((_ to_fp 11 53) x1_ack!3918)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3921)
                           ((_ to_fp 11 53) y0_ack!3920))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3918)
                                   ((_ to_fp 11 53) x0_ack!3925)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3919)
                                   ((_ to_fp 11 53) x1_ack!3918))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3918)
                                   ((_ to_fp 11 53) x0_ack!3925))))))
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
                                   ((_ to_fp 11 53) x1_ack!3918)
                                   ((_ to_fp 11 53) x0_ack!3925))))))
  (FPCHECK_FMUL_ACCURACY #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
