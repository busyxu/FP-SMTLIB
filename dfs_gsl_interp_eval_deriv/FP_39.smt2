(declare-fun x1_ack!1143 () (_ BitVec 64))
(declare-fun x0_ack!1146 () (_ BitVec 64))
(declare-fun x2_ack!1144 () (_ BitVec 64))
(declare-fun xx_ack!1145 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1146) ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1143) ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1146))
               ((_ to_fp 11 53) x0_ack!1146))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1146)))
       ((_ to_fp 11 53) x0_ack!1146)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143))
               ((_ to_fp 11 53) x1_ack!1143))
       ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1144)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143)))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1143)
                    ((_ to_fp 11 53) x0_ack!1146))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1144)
                    ((_ to_fp 11 53) x1_ack!1143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!1145) ((_ to_fp 11 53) x0_ack!1146)))

(check-sat)
(exit)
