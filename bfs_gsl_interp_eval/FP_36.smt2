(declare-fun x1_ack!1112 () (_ BitVec 64))
(declare-fun x0_ack!1115 () (_ BitVec 64))
(declare-fun x2_ack!1113 () (_ BitVec 64))
(declare-fun xx_ack!1114 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1115) ((_ to_fp 11 53) x1_ack!1112)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1112) ((_ to_fp 11 53) x2_ack!1113)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1112)
                       ((_ to_fp 11 53) x0_ack!1115))
               ((_ to_fp 11 53) x0_ack!1115))
       ((_ to_fp 11 53) x1_ack!1112)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1112)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1112)
                       ((_ to_fp 11 53) x0_ack!1115)))
       ((_ to_fp 11 53) x0_ack!1115)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1113)
                       ((_ to_fp 11 53) x1_ack!1112))
               ((_ to_fp 11 53) x1_ack!1112))
       ((_ to_fp 11 53) x2_ack!1113)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1113)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1113)
                       ((_ to_fp 11 53) x1_ack!1112)))
       ((_ to_fp 11 53) x1_ack!1112)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1112)
                    ((_ to_fp 11 53) x0_ack!1115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1113)
                    ((_ to_fp 11 53) x1_ack!1112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1114) ((_ to_fp 11 53) x0_ack!1115))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1114) ((_ to_fp 11 53) x2_ack!1113))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1114) ((_ to_fp 11 53) x0_ack!1115))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1114) ((_ to_fp 11 53) x1_ack!1112)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1112) ((_ to_fp 11 53) xx_ack!1114))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1113)
               ((_ to_fp 11 53) x1_ack!1112))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
