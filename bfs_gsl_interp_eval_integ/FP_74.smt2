(declare-fun x1_ack!3952 () (_ BitVec 64))
(declare-fun x0_ack!3956 () (_ BitVec 64))
(declare-fun x2_ack!3953 () (_ BitVec 64))
(declare-fun b_ack!3955 () (_ BitVec 64))
(declare-fun a_ack!3954 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3956) ((_ to_fp 11 53) x1_ack!3952)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3952) ((_ to_fp 11 53) x2_ack!3953)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3952)
                       ((_ to_fp 11 53) x0_ack!3956))
               ((_ to_fp 11 53) x0_ack!3956))
       ((_ to_fp 11 53) x1_ack!3952)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3952)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3952)
                       ((_ to_fp 11 53) x0_ack!3956)))
       ((_ to_fp 11 53) x0_ack!3956)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3953)
                       ((_ to_fp 11 53) x1_ack!3952))
               ((_ to_fp 11 53) x1_ack!3952))
       ((_ to_fp 11 53) x2_ack!3953)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3953)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3953)
                       ((_ to_fp 11 53) x1_ack!3952)))
       ((_ to_fp 11 53) x1_ack!3952)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3952)
                    ((_ to_fp 11 53) x0_ack!3956))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3953)
                    ((_ to_fp 11 53) x1_ack!3952))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3954) ((_ to_fp 11 53) b_ack!3955))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3954) ((_ to_fp 11 53) x0_ack!3956))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3955) ((_ to_fp 11 53) x2_ack!3953))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3954) ((_ to_fp 11 53) b_ack!3955))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3954) ((_ to_fp 11 53) x0_ack!3956))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3954) ((_ to_fp 11 53) x1_ack!3952))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3955) ((_ to_fp 11 53) x0_ack!3956))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3955) ((_ to_fp 11 53) x1_ack!3952))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3952)
                    ((_ to_fp 11 53) x0_ack!3956))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
