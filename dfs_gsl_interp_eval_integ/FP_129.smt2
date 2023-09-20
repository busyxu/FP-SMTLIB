(declare-fun x1_ack!7729 () (_ BitVec 64))
(declare-fun x0_ack!7733 () (_ BitVec 64))
(declare-fun x2_ack!7730 () (_ BitVec 64))
(declare-fun b_ack!7732 () (_ BitVec 64))
(declare-fun a_ack!7731 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7733) ((_ to_fp 11 53) x1_ack!7729)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7729) ((_ to_fp 11 53) x2_ack!7730)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7729)
                       ((_ to_fp 11 53) x0_ack!7733))
               ((_ to_fp 11 53) x0_ack!7733))
       ((_ to_fp 11 53) x1_ack!7729)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7729)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7729)
                       ((_ to_fp 11 53) x0_ack!7733)))
       ((_ to_fp 11 53) x0_ack!7733)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7730)
                       ((_ to_fp 11 53) x1_ack!7729))
               ((_ to_fp 11 53) x1_ack!7729))
       ((_ to_fp 11 53) x2_ack!7730)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7730)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7730)
                       ((_ to_fp 11 53) x1_ack!7729)))
       ((_ to_fp 11 53) x1_ack!7729)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7729)
                    ((_ to_fp 11 53) x0_ack!7733))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7730)
                    ((_ to_fp 11 53) x1_ack!7729))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7731) ((_ to_fp 11 53) b_ack!7732))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7731) ((_ to_fp 11 53) x0_ack!7733))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7732) ((_ to_fp 11 53) x2_ack!7730))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7731) ((_ to_fp 11 53) b_ack!7732))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7731) ((_ to_fp 11 53) x0_ack!7733))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7731) ((_ to_fp 11 53) x1_ack!7729))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7732) ((_ to_fp 11 53) x0_ack!7733)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7729)
                    ((_ to_fp 11 53) x0_ack!7733))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
