(declare-fun x1_ack!1135 () (_ BitVec 64))
(declare-fun x0_ack!1138 () (_ BitVec 64))
(declare-fun x2_ack!1136 () (_ BitVec 64))
(declare-fun xx_ack!1137 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1138) ((_ to_fp 11 53) x1_ack!1135)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1135) ((_ to_fp 11 53) x2_ack!1136)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1135)
                       ((_ to_fp 11 53) x0_ack!1138))
               ((_ to_fp 11 53) x0_ack!1138))
       ((_ to_fp 11 53) x1_ack!1135)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1135)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1135)
                       ((_ to_fp 11 53) x0_ack!1138)))
       ((_ to_fp 11 53) x0_ack!1138)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1136)
                       ((_ to_fp 11 53) x1_ack!1135))
               ((_ to_fp 11 53) x1_ack!1135))
       ((_ to_fp 11 53) x2_ack!1136)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1136)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1136)
                       ((_ to_fp 11 53) x1_ack!1135)))
       ((_ to_fp 11 53) x1_ack!1135)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1135)
                    ((_ to_fp 11 53) x0_ack!1138))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1136)
                    ((_ to_fp 11 53) x1_ack!1135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1137) ((_ to_fp 11 53) x0_ack!1138))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1137) ((_ to_fp 11 53) x2_ack!1136))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!1137) ((_ to_fp 11 53) x0_ack!1138)))

(check-sat)
(exit)
