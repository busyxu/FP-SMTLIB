(declare-fun x1_ack!202 () (_ BitVec 64))
(declare-fun x0_ack!204 () (_ BitVec 64))
(declare-fun x2_ack!203 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!204) ((_ to_fp 11 53) x1_ack!202)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!202) ((_ to_fp 11 53) x2_ack!203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!204))
               ((_ to_fp 11 53) x0_ack!204))
       ((_ to_fp 11 53) x1_ack!202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!204)))
       ((_ to_fp 11 53) x0_ack!204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!203)
                       ((_ to_fp 11 53) x1_ack!202))
               ((_ to_fp 11 53) x1_ack!202))
       ((_ to_fp 11 53) x2_ack!203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!203)
                       ((_ to_fp 11 53) x1_ack!202)))
       ((_ to_fp 11 53) x1_ack!202)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!202)
                    ((_ to_fp 11 53) x0_ack!204))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!203)
                    ((_ to_fp 11 53) x1_ack!202))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
