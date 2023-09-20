(declare-fun x1_ack!1261 () (_ BitVec 64))
(declare-fun x0_ack!1264 () (_ BitVec 64))
(declare-fun x2_ack!1262 () (_ BitVec 64))
(declare-fun xx_ack!1263 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1264) ((_ to_fp 11 53) x1_ack!1261)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1261) ((_ to_fp 11 53) x2_ack!1262)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1261)
                       ((_ to_fp 11 53) x0_ack!1264))
               ((_ to_fp 11 53) x0_ack!1264))
       ((_ to_fp 11 53) x1_ack!1261)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1261)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1261)
                       ((_ to_fp 11 53) x0_ack!1264)))
       ((_ to_fp 11 53) x0_ack!1264)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1262)
                       ((_ to_fp 11 53) x1_ack!1261))
               ((_ to_fp 11 53) x1_ack!1261))
       ((_ to_fp 11 53) x2_ack!1262)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1262)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1262)
                       ((_ to_fp 11 53) x1_ack!1261)))
       ((_ to_fp 11 53) x1_ack!1261)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1261)
                    ((_ to_fp 11 53) x0_ack!1264))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1262)
                    ((_ to_fp 11 53) x1_ack!1261))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1263) ((_ to_fp 11 53) x0_ack!1264))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1263) ((_ to_fp 11 53) x2_ack!1262))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1263) ((_ to_fp 11 53) x0_ack!1264))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1263) ((_ to_fp 11 53) x1_ack!1261))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1261)
               ((_ to_fp 11 53) x0_ack!1264))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
