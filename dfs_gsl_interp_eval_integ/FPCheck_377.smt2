(declare-fun x1_ack!4598 () (_ BitVec 64))
(declare-fun x0_ack!4605 () (_ BitVec 64))
(declare-fun x2_ack!4599 () (_ BitVec 64))
(declare-fun b_ack!4604 () (_ BitVec 64))
(declare-fun a_ack!4603 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4600 () (_ BitVec 64))
(declare-fun y1_ack!4601 () (_ BitVec 64))
(declare-fun y2_ack!4602 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4605) ((_ to_fp 11 53) x1_ack!4598)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4598) ((_ to_fp 11 53) x2_ack!4599)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4598)
                       ((_ to_fp 11 53) x0_ack!4605))
               ((_ to_fp 11 53) x0_ack!4605))
       ((_ to_fp 11 53) x1_ack!4598)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4598)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4598)
                       ((_ to_fp 11 53) x0_ack!4605)))
       ((_ to_fp 11 53) x0_ack!4605)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4599)
                       ((_ to_fp 11 53) x1_ack!4598))
               ((_ to_fp 11 53) x1_ack!4598))
       ((_ to_fp 11 53) x2_ack!4599)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4599)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4599)
                       ((_ to_fp 11 53) x1_ack!4598)))
       ((_ to_fp 11 53) x1_ack!4598)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4598)
                    ((_ to_fp 11 53) x0_ack!4605))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4599)
                    ((_ to_fp 11 53) x1_ack!4598))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4603) ((_ to_fp 11 53) b_ack!4604))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4603) ((_ to_fp 11 53) x0_ack!4605))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4604) ((_ to_fp 11 53) x2_ack!4599))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4603) ((_ to_fp 11 53) b_ack!4604))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4603) ((_ to_fp 11 53) x0_ack!4605))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4603) ((_ to_fp 11 53) x1_ack!4598)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4598) ((_ to_fp 11 53) a_ack!4603))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4604) ((_ to_fp 11 53) x1_ack!4598))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4604) ((_ to_fp 11 53) x2_ack!4599)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4599)
                    ((_ to_fp 11 53) x1_ack!4598))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4602)
                           ((_ to_fp 11 53) y1_ack!4601))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4599)
                                   ((_ to_fp 11 53) x1_ack!4598)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4601)
                           ((_ to_fp 11 53) y0_ack!4600))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4598)
                                   ((_ to_fp 11 53) x0_ack!4605)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4599)
                                   ((_ to_fp 11 53) x1_ack!4598))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4598)
                                   ((_ to_fp 11 53) x0_ack!4605))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
