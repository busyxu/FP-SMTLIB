(declare-fun x1_ack!7764 () (_ BitVec 64))
(declare-fun x0_ack!7768 () (_ BitVec 64))
(declare-fun x2_ack!7765 () (_ BitVec 64))
(declare-fun b_ack!7767 () (_ BitVec 64))
(declare-fun a_ack!7766 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7768) ((_ to_fp 11 53) x1_ack!7764)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7764) ((_ to_fp 11 53) x2_ack!7765)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7764)
                       ((_ to_fp 11 53) x0_ack!7768))
               ((_ to_fp 11 53) x0_ack!7768))
       ((_ to_fp 11 53) x1_ack!7764)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7764)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7764)
                       ((_ to_fp 11 53) x0_ack!7768)))
       ((_ to_fp 11 53) x0_ack!7768)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7765)
                       ((_ to_fp 11 53) x1_ack!7764))
               ((_ to_fp 11 53) x1_ack!7764))
       ((_ to_fp 11 53) x2_ack!7765)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7765)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7765)
                       ((_ to_fp 11 53) x1_ack!7764)))
       ((_ to_fp 11 53) x1_ack!7764)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7764)
                    ((_ to_fp 11 53) x0_ack!7768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7765)
                    ((_ to_fp 11 53) x1_ack!7764))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7766) ((_ to_fp 11 53) b_ack!7767))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7766) ((_ to_fp 11 53) x0_ack!7768))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7767) ((_ to_fp 11 53) x2_ack!7765))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7766) ((_ to_fp 11 53) b_ack!7767))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7766) ((_ to_fp 11 53) x0_ack!7768))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7766) ((_ to_fp 11 53) x1_ack!7764))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7767) ((_ to_fp 11 53) x0_ack!7768))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7767) ((_ to_fp 11 53) x1_ack!7764)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7764) ((_ to_fp 11 53) b_ack!7767))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7764)
                    ((_ to_fp 11 53) x0_ack!7768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7765)
                    ((_ to_fp 11 53) x1_ack!7764))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
