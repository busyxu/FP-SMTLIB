(declare-fun x1_ack!1128 () (_ BitVec 64))
(declare-fun x0_ack!1131 () (_ BitVec 64))
(declare-fun x2_ack!1129 () (_ BitVec 64))
(declare-fun xx_ack!1130 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1131) ((_ to_fp 11 53) x1_ack!1128)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1128) ((_ to_fp 11 53) x2_ack!1129)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1128)
                       ((_ to_fp 11 53) x0_ack!1131))
               ((_ to_fp 11 53) x0_ack!1131))
       ((_ to_fp 11 53) x1_ack!1128)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1128)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1128)
                       ((_ to_fp 11 53) x0_ack!1131)))
       ((_ to_fp 11 53) x0_ack!1131)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1129)
                       ((_ to_fp 11 53) x1_ack!1128))
               ((_ to_fp 11 53) x1_ack!1128))
       ((_ to_fp 11 53) x2_ack!1129)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1129)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1129)
                       ((_ to_fp 11 53) x1_ack!1128)))
       ((_ to_fp 11 53) x1_ack!1128)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1128)
                    ((_ to_fp 11 53) x0_ack!1131))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1129)
                    ((_ to_fp 11 53) x1_ack!1128))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1130) ((_ to_fp 11 53) x0_ack!1131))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1130) ((_ to_fp 11 53) x2_ack!1129))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1130) ((_ to_fp 11 53) x0_ack!1131))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1130) ((_ to_fp 11 53) x1_ack!1128)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1128) ((_ to_fp 11 53) xx_ack!1130))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1129)
               ((_ to_fp 11 53) x1_ack!1128))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
