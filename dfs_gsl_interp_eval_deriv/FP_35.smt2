(declare-fun x1_ack!1092 () (_ BitVec 64))
(declare-fun x0_ack!1095 () (_ BitVec 64))
(declare-fun x2_ack!1093 () (_ BitVec 64))
(declare-fun xx_ack!1094 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1095) ((_ to_fp 11 53) x1_ack!1092)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1092) ((_ to_fp 11 53) x2_ack!1093)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1095))
               ((_ to_fp 11 53) x0_ack!1095))
       ((_ to_fp 11 53) x1_ack!1092)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1092)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1095)))
       ((_ to_fp 11 53) x0_ack!1095)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1093)
                       ((_ to_fp 11 53) x1_ack!1092))
               ((_ to_fp 11 53) x1_ack!1092))
       ((_ to_fp 11 53) x2_ack!1093)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1093)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1093)
                       ((_ to_fp 11 53) x1_ack!1092)))
       ((_ to_fp 11 53) x1_ack!1092)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1092)
                    ((_ to_fp 11 53) x0_ack!1095))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1093)
                    ((_ to_fp 11 53) x1_ack!1092))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1094) ((_ to_fp 11 53) x0_ack!1095))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1094) ((_ to_fp 11 53) x2_ack!1093))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1094) ((_ to_fp 11 53) x0_ack!1095))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1094) ((_ to_fp 11 53) x1_ack!1092)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1092) ((_ to_fp 11 53) xx_ack!1094))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1093)
               ((_ to_fp 11 53) x1_ack!1092))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
