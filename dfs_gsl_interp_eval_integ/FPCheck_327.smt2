(declare-fun x1_ack!3950 () (_ BitVec 64))
(declare-fun x0_ack!3957 () (_ BitVec 64))
(declare-fun x2_ack!3951 () (_ BitVec 64))
(declare-fun b_ack!3956 () (_ BitVec 64))
(declare-fun a_ack!3955 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3952 () (_ BitVec 64))
(declare-fun y1_ack!3953 () (_ BitVec 64))
(declare-fun y2_ack!3954 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3957) ((_ to_fp 11 53) x1_ack!3950)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3950) ((_ to_fp 11 53) x2_ack!3951)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3950)
                       ((_ to_fp 11 53) x0_ack!3957))
               ((_ to_fp 11 53) x0_ack!3957))
       ((_ to_fp 11 53) x1_ack!3950)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3950)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3950)
                       ((_ to_fp 11 53) x0_ack!3957)))
       ((_ to_fp 11 53) x0_ack!3957)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3951)
                       ((_ to_fp 11 53) x1_ack!3950))
               ((_ to_fp 11 53) x1_ack!3950))
       ((_ to_fp 11 53) x2_ack!3951)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3951)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3951)
                       ((_ to_fp 11 53) x1_ack!3950)))
       ((_ to_fp 11 53) x1_ack!3950)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3950)
                    ((_ to_fp 11 53) x0_ack!3957))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3951)
                    ((_ to_fp 11 53) x1_ack!3950))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3955) ((_ to_fp 11 53) b_ack!3956))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3955) ((_ to_fp 11 53) x0_ack!3957))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3956) ((_ to_fp 11 53) x2_ack!3951))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3955) ((_ to_fp 11 53) b_ack!3956))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3955) ((_ to_fp 11 53) x0_ack!3957))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3955) ((_ to_fp 11 53) x1_ack!3950))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3956) ((_ to_fp 11 53) x0_ack!3957))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3956) ((_ to_fp 11 53) x1_ack!3950))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3950)
                    ((_ to_fp 11 53) x0_ack!3957))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3954)
                           ((_ to_fp 11 53) y1_ack!3953))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3951)
                                   ((_ to_fp 11 53) x1_ack!3950)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3953)
                           ((_ to_fp 11 53) y0_ack!3952))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3950)
                                   ((_ to_fp 11 53) x0_ack!3957)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3951)
                                   ((_ to_fp 11 53) x1_ack!3950))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3950)
                                   ((_ to_fp 11 53) x0_ack!3957))))))
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
                                   ((_ to_fp 11 53) x1_ack!3950)
                                   ((_ to_fp 11 53) x0_ack!3957))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3955)
                    ((_ to_fp 11 53) x0_ack!3957))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3956)
                    ((_ to_fp 11 53) x0_ack!3957))))))))

(check-sat)
(exit)
