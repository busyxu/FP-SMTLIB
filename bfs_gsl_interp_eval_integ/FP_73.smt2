(declare-fun x1_ack!3907 () (_ BitVec 64))
(declare-fun x0_ack!3911 () (_ BitVec 64))
(declare-fun x2_ack!3908 () (_ BitVec 64))
(declare-fun b_ack!3910 () (_ BitVec 64))
(declare-fun a_ack!3909 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3911) ((_ to_fp 11 53) x1_ack!3907)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3907) ((_ to_fp 11 53) x2_ack!3908)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3907)
                       ((_ to_fp 11 53) x0_ack!3911))
               ((_ to_fp 11 53) x0_ack!3911))
       ((_ to_fp 11 53) x1_ack!3907)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3907)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3907)
                       ((_ to_fp 11 53) x0_ack!3911)))
       ((_ to_fp 11 53) x0_ack!3911)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3908)
                       ((_ to_fp 11 53) x1_ack!3907))
               ((_ to_fp 11 53) x1_ack!3907))
       ((_ to_fp 11 53) x2_ack!3908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3908)
                       ((_ to_fp 11 53) x1_ack!3907)))
       ((_ to_fp 11 53) x1_ack!3907)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3907)
                    ((_ to_fp 11 53) x0_ack!3911))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3908)
                    ((_ to_fp 11 53) x1_ack!3907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3909) ((_ to_fp 11 53) b_ack!3910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3909) ((_ to_fp 11 53) x0_ack!3911))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3910) ((_ to_fp 11 53) x2_ack!3908))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3909) ((_ to_fp 11 53) b_ack!3910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3909) ((_ to_fp 11 53) x0_ack!3911))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3909) ((_ to_fp 11 53) x1_ack!3907))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3910) ((_ to_fp 11 53) x0_ack!3911))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3910) ((_ to_fp 11 53) x1_ack!3907))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3907)
                    ((_ to_fp 11 53) x0_ack!3911))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
