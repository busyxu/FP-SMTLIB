(declare-fun x1_ack!1188 () (_ BitVec 64))
(declare-fun x0_ack!1191 () (_ BitVec 64))
(declare-fun x2_ack!1189 () (_ BitVec 64))
(declare-fun xx_ack!1190 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1191) ((_ to_fp 11 53) x1_ack!1188)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1188) ((_ to_fp 11 53) x2_ack!1189)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1188)
                       ((_ to_fp 11 53) x0_ack!1191))
               ((_ to_fp 11 53) x0_ack!1191))
       ((_ to_fp 11 53) x1_ack!1188)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1188)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1188)
                       ((_ to_fp 11 53) x0_ack!1191)))
       ((_ to_fp 11 53) x0_ack!1191)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1189)
                       ((_ to_fp 11 53) x1_ack!1188))
               ((_ to_fp 11 53) x1_ack!1188))
       ((_ to_fp 11 53) x2_ack!1189)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1189)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1189)
                       ((_ to_fp 11 53) x1_ack!1188)))
       ((_ to_fp 11 53) x1_ack!1188)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1188)
                    ((_ to_fp 11 53) x0_ack!1191))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1189)
                    ((_ to_fp 11 53) x1_ack!1188))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1190) ((_ to_fp 11 53) x0_ack!1191))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1190) ((_ to_fp 11 53) x2_ack!1189))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1190) ((_ to_fp 11 53) x0_ack!1191))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1190) ((_ to_fp 11 53) x1_ack!1188)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1188) ((_ to_fp 11 53) xx_ack!1190))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1189)
               ((_ to_fp 11 53) x1_ack!1188))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
