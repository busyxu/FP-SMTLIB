(declare-fun x1_ack!3751 () (_ BitVec 64))
(declare-fun x0_ack!3755 () (_ BitVec 64))
(declare-fun x2_ack!3752 () (_ BitVec 64))
(declare-fun b_ack!3754 () (_ BitVec 64))
(declare-fun a_ack!3753 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3755) ((_ to_fp 11 53) x1_ack!3751)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3751) ((_ to_fp 11 53) x2_ack!3752)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3751)
                       ((_ to_fp 11 53) x0_ack!3755))
               ((_ to_fp 11 53) x0_ack!3755))
       ((_ to_fp 11 53) x1_ack!3751)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3751)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3751)
                       ((_ to_fp 11 53) x0_ack!3755)))
       ((_ to_fp 11 53) x0_ack!3755)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3752)
                       ((_ to_fp 11 53) x1_ack!3751))
               ((_ to_fp 11 53) x1_ack!3751))
       ((_ to_fp 11 53) x2_ack!3752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3752)
                       ((_ to_fp 11 53) x1_ack!3751)))
       ((_ to_fp 11 53) x1_ack!3751)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3751)
                    ((_ to_fp 11 53) x0_ack!3755))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3752)
                    ((_ to_fp 11 53) x1_ack!3751))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3753) ((_ to_fp 11 53) b_ack!3754))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3753) ((_ to_fp 11 53) x0_ack!3755))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3754) ((_ to_fp 11 53) x2_ack!3752))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3753) ((_ to_fp 11 53) b_ack!3754))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3753) ((_ to_fp 11 53) x0_ack!3755))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3753) ((_ to_fp 11 53) x1_ack!3751))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3754) ((_ to_fp 11 53) x0_ack!3755))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3754) ((_ to_fp 11 53) x1_ack!3751))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3751)
                    ((_ to_fp 11 53) x0_ack!3755))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
