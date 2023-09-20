(declare-fun x1_ack!7614 () (_ BitVec 64))
(declare-fun x0_ack!7618 () (_ BitVec 64))
(declare-fun x2_ack!7615 () (_ BitVec 64))
(declare-fun b_ack!7617 () (_ BitVec 64))
(declare-fun a_ack!7616 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7618) ((_ to_fp 11 53) x1_ack!7614)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7614) ((_ to_fp 11 53) x2_ack!7615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7614)
                       ((_ to_fp 11 53) x0_ack!7618))
               ((_ to_fp 11 53) x0_ack!7618))
       ((_ to_fp 11 53) x1_ack!7614)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7614)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7614)
                       ((_ to_fp 11 53) x0_ack!7618)))
       ((_ to_fp 11 53) x0_ack!7618)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7615)
                       ((_ to_fp 11 53) x1_ack!7614))
               ((_ to_fp 11 53) x1_ack!7614))
       ((_ to_fp 11 53) x2_ack!7615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7615)
                       ((_ to_fp 11 53) x1_ack!7614)))
       ((_ to_fp 11 53) x1_ack!7614)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7614)
                    ((_ to_fp 11 53) x0_ack!7618))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7615)
                    ((_ to_fp 11 53) x1_ack!7614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7616) ((_ to_fp 11 53) b_ack!7617))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7616) ((_ to_fp 11 53) x0_ack!7618))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7617) ((_ to_fp 11 53) x2_ack!7615))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7616) ((_ to_fp 11 53) b_ack!7617))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7616) ((_ to_fp 11 53) x0_ack!7618))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7616) ((_ to_fp 11 53) x1_ack!7614))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7617) ((_ to_fp 11 53) x0_ack!7618)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7614)
                    ((_ to_fp 11 53) x0_ack!7618))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
