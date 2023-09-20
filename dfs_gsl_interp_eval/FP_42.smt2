(declare-fun x1_ack!1178 () (_ BitVec 64))
(declare-fun x0_ack!1181 () (_ BitVec 64))
(declare-fun x2_ack!1179 () (_ BitVec 64))
(declare-fun xx_ack!1180 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1181) ((_ to_fp 11 53) x1_ack!1178)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1178) ((_ to_fp 11 53) x2_ack!1179)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1178)
                       ((_ to_fp 11 53) x0_ack!1181))
               ((_ to_fp 11 53) x0_ack!1181))
       ((_ to_fp 11 53) x1_ack!1178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1178)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1178)
                       ((_ to_fp 11 53) x0_ack!1181)))
       ((_ to_fp 11 53) x0_ack!1181)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1179)
                       ((_ to_fp 11 53) x1_ack!1178))
               ((_ to_fp 11 53) x1_ack!1178))
       ((_ to_fp 11 53) x2_ack!1179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1179)
                       ((_ to_fp 11 53) x1_ack!1178)))
       ((_ to_fp 11 53) x1_ack!1178)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1178)
                    ((_ to_fp 11 53) x0_ack!1181))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1179)
                    ((_ to_fp 11 53) x1_ack!1178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x0_ack!1181))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x2_ack!1179))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x0_ack!1181))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x1_ack!1178))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1178)
                    ((_ to_fp 11 53) x0_ack!1181))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
