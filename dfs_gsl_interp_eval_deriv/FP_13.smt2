(declare-fun x1_ack!235 () (_ BitVec 64))
(declare-fun x0_ack!237 () (_ BitVec 64))
(declare-fun x2_ack!236 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!237) ((_ to_fp 11 53) x1_ack!235)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!235) ((_ to_fp 11 53) x2_ack!236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!235)
                       ((_ to_fp 11 53) x0_ack!237))
               ((_ to_fp 11 53) x0_ack!237))
       ((_ to_fp 11 53) x1_ack!235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!235)
                       ((_ to_fp 11 53) x0_ack!237)))
       ((_ to_fp 11 53) x0_ack!237)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!236)
                       ((_ to_fp 11 53) x1_ack!235))
               ((_ to_fp 11 53) x1_ack!235))
       ((_ to_fp 11 53) x2_ack!236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!236)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!236)
                       ((_ to_fp 11 53) x1_ack!235)))
       ((_ to_fp 11 53) x1_ack!235)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!235)
                    ((_ to_fp 11 53) x0_ack!237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!236)
                    ((_ to_fp 11 53) x1_ack!235))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
