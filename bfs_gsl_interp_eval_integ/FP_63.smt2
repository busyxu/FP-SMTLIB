(declare-fun x1_ack!3338 () (_ BitVec 64))
(declare-fun x0_ack!3342 () (_ BitVec 64))
(declare-fun x2_ack!3339 () (_ BitVec 64))
(declare-fun b_ack!3341 () (_ BitVec 64))
(declare-fun a_ack!3340 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3342) ((_ to_fp 11 53) x1_ack!3338)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3338) ((_ to_fp 11 53) x2_ack!3339)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3338)
                       ((_ to_fp 11 53) x0_ack!3342))
               ((_ to_fp 11 53) x0_ack!3342))
       ((_ to_fp 11 53) x1_ack!3338)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3338)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3338)
                       ((_ to_fp 11 53) x0_ack!3342)))
       ((_ to_fp 11 53) x0_ack!3342)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3339)
                       ((_ to_fp 11 53) x1_ack!3338))
               ((_ to_fp 11 53) x1_ack!3338))
       ((_ to_fp 11 53) x2_ack!3339)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3339)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3339)
                       ((_ to_fp 11 53) x1_ack!3338)))
       ((_ to_fp 11 53) x1_ack!3338)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3338)
                    ((_ to_fp 11 53) x0_ack!3342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3339)
                    ((_ to_fp 11 53) x1_ack!3338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3340) ((_ to_fp 11 53) b_ack!3341))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3340) ((_ to_fp 11 53) x0_ack!3342))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3341) ((_ to_fp 11 53) x2_ack!3339))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3340) ((_ to_fp 11 53) b_ack!3341))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3340) ((_ to_fp 11 53) x0_ack!3342))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3340) ((_ to_fp 11 53) x1_ack!3338)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3338) ((_ to_fp 11 53) a_ack!3340))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3341) ((_ to_fp 11 53) x1_ack!3338))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3341) ((_ to_fp 11 53) x2_ack!3339))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3339)
                    ((_ to_fp 11 53) x1_ack!3338))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
