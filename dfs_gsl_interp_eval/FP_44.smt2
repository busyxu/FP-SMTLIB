(declare-fun x1_ack!1206 () (_ BitVec 64))
(declare-fun x0_ack!1209 () (_ BitVec 64))
(declare-fun x2_ack!1207 () (_ BitVec 64))
(declare-fun xx_ack!1208 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1209) ((_ to_fp 11 53) x1_ack!1206)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1206) ((_ to_fp 11 53) x2_ack!1207)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1206)
                       ((_ to_fp 11 53) x0_ack!1209))
               ((_ to_fp 11 53) x0_ack!1209))
       ((_ to_fp 11 53) x1_ack!1206)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1206)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1206)
                       ((_ to_fp 11 53) x0_ack!1209)))
       ((_ to_fp 11 53) x0_ack!1209)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1207)
                       ((_ to_fp 11 53) x1_ack!1206))
               ((_ to_fp 11 53) x1_ack!1206))
       ((_ to_fp 11 53) x2_ack!1207)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1207)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1207)
                       ((_ to_fp 11 53) x1_ack!1206)))
       ((_ to_fp 11 53) x1_ack!1206)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1206)
                    ((_ to_fp 11 53) x0_ack!1209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1207)
                    ((_ to_fp 11 53) x1_ack!1206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1208) ((_ to_fp 11 53) x0_ack!1209))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1208) ((_ to_fp 11 53) x2_ack!1207))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1208) ((_ to_fp 11 53) x0_ack!1209))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1208) ((_ to_fp 11 53) x1_ack!1206))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1206)
               ((_ to_fp 11 53) x0_ack!1209))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
