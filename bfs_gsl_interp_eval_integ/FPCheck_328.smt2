(declare-fun x1_ack!4109 () (_ BitVec 64))
(declare-fun x0_ack!4116 () (_ BitVec 64))
(declare-fun x2_ack!4110 () (_ BitVec 64))
(declare-fun b_ack!4115 () (_ BitVec 64))
(declare-fun a_ack!4114 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4111 () (_ BitVec 64))
(declare-fun y1_ack!4112 () (_ BitVec 64))
(declare-fun y2_ack!4113 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4116) ((_ to_fp 11 53) x1_ack!4109)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4109) ((_ to_fp 11 53) x2_ack!4110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4109)
                       ((_ to_fp 11 53) x0_ack!4116))
               ((_ to_fp 11 53) x0_ack!4116))
       ((_ to_fp 11 53) x1_ack!4109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4109)
                       ((_ to_fp 11 53) x0_ack!4116)))
       ((_ to_fp 11 53) x0_ack!4116)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4110)
                       ((_ to_fp 11 53) x1_ack!4109))
               ((_ to_fp 11 53) x1_ack!4109))
       ((_ to_fp 11 53) x2_ack!4110)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4110)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4110)
                       ((_ to_fp 11 53) x1_ack!4109)))
       ((_ to_fp 11 53) x1_ack!4109)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4109)
                    ((_ to_fp 11 53) x0_ack!4116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4110)
                    ((_ to_fp 11 53) x1_ack!4109))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4114) ((_ to_fp 11 53) b_ack!4115))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4114) ((_ to_fp 11 53) x0_ack!4116))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4115) ((_ to_fp 11 53) x2_ack!4110))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4114) ((_ to_fp 11 53) b_ack!4115))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4114) ((_ to_fp 11 53) x0_ack!4116))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4114) ((_ to_fp 11 53) x1_ack!4109))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4115) ((_ to_fp 11 53) x0_ack!4116))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4115) ((_ to_fp 11 53) x1_ack!4109))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4109)
                    ((_ to_fp 11 53) x0_ack!4116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4113)
                           ((_ to_fp 11 53) y1_ack!4112))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4110)
                                   ((_ to_fp 11 53) x1_ack!4109)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4112)
                           ((_ to_fp 11 53) y0_ack!4111))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4109)
                                   ((_ to_fp 11 53) x0_ack!4116)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4110)
                                   ((_ to_fp 11 53) x1_ack!4109))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4109)
                                   ((_ to_fp 11 53) x0_ack!4116))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4109)
                    ((_ to_fp 11 53) x0_ack!4116)))))))

(check-sat)
(exit)
