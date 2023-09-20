(declare-fun x1_ack!1183 () (_ BitVec 64))
(declare-fun x0_ack!1187 () (_ BitVec 64))
(declare-fun x2_ack!1184 () (_ BitVec 64))
(declare-fun b_ack!1186 () (_ BitVec 64))
(declare-fun a_ack!1185 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1187) ((_ to_fp 11 53) x1_ack!1183)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1183) ((_ to_fp 11 53) x2_ack!1184)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1183)
                       ((_ to_fp 11 53) x0_ack!1187))
               ((_ to_fp 11 53) x0_ack!1187))
       ((_ to_fp 11 53) x1_ack!1183)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1183)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1183)
                       ((_ to_fp 11 53) x0_ack!1187)))
       ((_ to_fp 11 53) x0_ack!1187)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1184)
                       ((_ to_fp 11 53) x1_ack!1183))
               ((_ to_fp 11 53) x1_ack!1183))
       ((_ to_fp 11 53) x2_ack!1184)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1184)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1184)
                       ((_ to_fp 11 53) x1_ack!1183)))
       ((_ to_fp 11 53) x1_ack!1183)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1183)
                    ((_ to_fp 11 53) x0_ack!1187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1184)
                    ((_ to_fp 11 53) x1_ack!1183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1185) ((_ to_fp 11 53) b_ack!1186))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1185) ((_ to_fp 11 53) x0_ack!1187))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1186) ((_ to_fp 11 53) x2_ack!1184))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1185) ((_ to_fp 11 53) b_ack!1186))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1185) ((_ to_fp 11 53) x0_ack!1187))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1185) ((_ to_fp 11 53) x1_ack!1183)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1183) ((_ to_fp 11 53) a_ack!1185))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1186) ((_ to_fp 11 53) x1_ack!1183))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1186) ((_ to_fp 11 53) x2_ack!1184))))

(check-sat)
(exit)
