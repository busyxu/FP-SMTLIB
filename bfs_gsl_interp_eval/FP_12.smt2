(declare-fun x1_ack!232 () (_ BitVec 64))
(declare-fun x0_ack!234 () (_ BitVec 64))
(declare-fun x2_ack!233 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!234) ((_ to_fp 11 53) x1_ack!232)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!232) ((_ to_fp 11 53) x2_ack!233)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!232)
                       ((_ to_fp 11 53) x0_ack!234))
               ((_ to_fp 11 53) x0_ack!234))
       ((_ to_fp 11 53) x1_ack!232)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!232)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!232)
                       ((_ to_fp 11 53) x0_ack!234)))
       ((_ to_fp 11 53) x0_ack!234)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!233)
                       ((_ to_fp 11 53) x1_ack!232))
               ((_ to_fp 11 53) x1_ack!232))
       ((_ to_fp 11 53) x2_ack!233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!233)
                       ((_ to_fp 11 53) x1_ack!232)))
       ((_ to_fp 11 53) x1_ack!232)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!232)
                    ((_ to_fp 11 53) x0_ack!234))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!233)
                    ((_ to_fp 11 53) x1_ack!232))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
