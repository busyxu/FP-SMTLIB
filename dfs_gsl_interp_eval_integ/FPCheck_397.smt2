(declare-fun x1_ack!4883 () (_ BitVec 64))
(declare-fun x0_ack!4890 () (_ BitVec 64))
(declare-fun x2_ack!4884 () (_ BitVec 64))
(declare-fun b_ack!4889 () (_ BitVec 64))
(declare-fun a_ack!4888 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4885 () (_ BitVec 64))
(declare-fun y1_ack!4886 () (_ BitVec 64))
(declare-fun y2_ack!4887 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4890) ((_ to_fp 11 53) x1_ack!4883)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4883) ((_ to_fp 11 53) x2_ack!4884)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4883)
                       ((_ to_fp 11 53) x0_ack!4890))
               ((_ to_fp 11 53) x0_ack!4890))
       ((_ to_fp 11 53) x1_ack!4883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4883)
                       ((_ to_fp 11 53) x0_ack!4890)))
       ((_ to_fp 11 53) x0_ack!4890)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4884)
                       ((_ to_fp 11 53) x1_ack!4883))
               ((_ to_fp 11 53) x1_ack!4883))
       ((_ to_fp 11 53) x2_ack!4884)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4884)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4884)
                       ((_ to_fp 11 53) x1_ack!4883)))
       ((_ to_fp 11 53) x1_ack!4883)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4883)
                    ((_ to_fp 11 53) x0_ack!4890))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4884)
                    ((_ to_fp 11 53) x1_ack!4883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4888) ((_ to_fp 11 53) b_ack!4889))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4888) ((_ to_fp 11 53) x0_ack!4890))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4889) ((_ to_fp 11 53) x2_ack!4884))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4888) ((_ to_fp 11 53) b_ack!4889))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4888) ((_ to_fp 11 53) x0_ack!4890))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4888) ((_ to_fp 11 53) x1_ack!4883)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4883) ((_ to_fp 11 53) a_ack!4888))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4889) ((_ to_fp 11 53) x1_ack!4883))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4889) ((_ to_fp 11 53) x2_ack!4884)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4884)
                    ((_ to_fp 11 53) x1_ack!4883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4887)
                           ((_ to_fp 11 53) y1_ack!4886))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4884)
                                   ((_ to_fp 11 53) x1_ack!4883)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4886)
                           ((_ to_fp 11 53) y0_ack!4885))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4883)
                                   ((_ to_fp 11 53) x0_ack!4890)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4884)
                                   ((_ to_fp 11 53) x1_ack!4883))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4883)
                                   ((_ to_fp 11 53) x0_ack!4890))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4884)
                    ((_ to_fp 11 53) x1_ack!4883)))))))

(check-sat)
(exit)
