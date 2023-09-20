(declare-fun x1_ack!169 () (_ BitVec 64))
(declare-fun x0_ack!171 () (_ BitVec 64))
(declare-fun x2_ack!170 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!171) ((_ to_fp 11 53) x1_ack!169)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!169) ((_ to_fp 11 53) x2_ack!170)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!169)
                       ((_ to_fp 11 53) x0_ack!171))
               ((_ to_fp 11 53) x0_ack!171))
       ((_ to_fp 11 53) x1_ack!169)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!169)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!169)
                       ((_ to_fp 11 53) x0_ack!171)))
       ((_ to_fp 11 53) x0_ack!171)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!170)
                       ((_ to_fp 11 53) x1_ack!169))
               ((_ to_fp 11 53) x1_ack!169))
       ((_ to_fp 11 53) x2_ack!170)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!170)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!170)
                       ((_ to_fp 11 53) x1_ack!169)))
       ((_ to_fp 11 53) x1_ack!169)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!169)
                    ((_ to_fp 11 53) x0_ack!171))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!170)
                    ((_ to_fp 11 53) x1_ack!169))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
