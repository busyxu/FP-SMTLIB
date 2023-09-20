(declare-fun x1_ack!1182 () (_ BitVec 64))
(declare-fun x0_ack!1185 () (_ BitVec 64))
(declare-fun x2_ack!1183 () (_ BitVec 64))
(declare-fun xx_ack!1184 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1185) ((_ to_fp 11 53) x1_ack!1182)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1182) ((_ to_fp 11 53) x2_ack!1183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1182)
                       ((_ to_fp 11 53) x0_ack!1185))
               ((_ to_fp 11 53) x0_ack!1185))
       ((_ to_fp 11 53) x1_ack!1182)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1182)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1182)
                       ((_ to_fp 11 53) x0_ack!1185)))
       ((_ to_fp 11 53) x0_ack!1185)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1183)
                       ((_ to_fp 11 53) x1_ack!1182))
               ((_ to_fp 11 53) x1_ack!1182))
       ((_ to_fp 11 53) x2_ack!1183)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1183)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1183)
                       ((_ to_fp 11 53) x1_ack!1182)))
       ((_ to_fp 11 53) x1_ack!1182)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1182)
                    ((_ to_fp 11 53) x0_ack!1185))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1183)
                    ((_ to_fp 11 53) x1_ack!1182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1184) ((_ to_fp 11 53) x0_ack!1185))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1184) ((_ to_fp 11 53) x2_ack!1183))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1184) ((_ to_fp 11 53) x0_ack!1185))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1184) ((_ to_fp 11 53) x1_ack!1182))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1182)
               ((_ to_fp 11 53) x0_ack!1185))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
