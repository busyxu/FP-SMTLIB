(declare-fun x1_ack!3891 () (_ BitVec 64))
(declare-fun x0_ack!3898 () (_ BitVec 64))
(declare-fun x2_ack!3892 () (_ BitVec 64))
(declare-fun b_ack!3897 () (_ BitVec 64))
(declare-fun a_ack!3896 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3893 () (_ BitVec 64))
(declare-fun y1_ack!3894 () (_ BitVec 64))
(declare-fun y2_ack!3895 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3898) ((_ to_fp 11 53) x1_ack!3891)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3891) ((_ to_fp 11 53) x2_ack!3892)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3891)
                       ((_ to_fp 11 53) x0_ack!3898))
               ((_ to_fp 11 53) x0_ack!3898))
       ((_ to_fp 11 53) x1_ack!3891)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3891)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3891)
                       ((_ to_fp 11 53) x0_ack!3898)))
       ((_ to_fp 11 53) x0_ack!3898)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3892)
                       ((_ to_fp 11 53) x1_ack!3891))
               ((_ to_fp 11 53) x1_ack!3891))
       ((_ to_fp 11 53) x2_ack!3892)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3892)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3892)
                       ((_ to_fp 11 53) x1_ack!3891)))
       ((_ to_fp 11 53) x1_ack!3891)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3891)
                    ((_ to_fp 11 53) x0_ack!3898))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3892)
                    ((_ to_fp 11 53) x1_ack!3891))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3896) ((_ to_fp 11 53) b_ack!3897))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3896) ((_ to_fp 11 53) x0_ack!3898))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3897) ((_ to_fp 11 53) x2_ack!3892))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3896) ((_ to_fp 11 53) b_ack!3897))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3896) ((_ to_fp 11 53) x0_ack!3898))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3896) ((_ to_fp 11 53) x1_ack!3891))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3897) ((_ to_fp 11 53) x0_ack!3898))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3897) ((_ to_fp 11 53) x1_ack!3891))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3891)
                    ((_ to_fp 11 53) x0_ack!3898))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3895)
                           ((_ to_fp 11 53) y1_ack!3894))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3892)
                                   ((_ to_fp 11 53) x1_ack!3891)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3894)
                           ((_ to_fp 11 53) y0_ack!3893))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3891)
                                   ((_ to_fp 11 53) x0_ack!3898)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3892)
                                   ((_ to_fp 11 53) x1_ack!3891))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3891)
                                   ((_ to_fp 11 53) x0_ack!3898))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!3891)
            ((_ to_fp 11 53) x0_ack!3898))
    a!4))))

(check-sat)
(exit)
