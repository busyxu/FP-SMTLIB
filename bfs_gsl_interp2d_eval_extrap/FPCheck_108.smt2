(declare-fun x1_ack!1137 () (_ BitVec 64))
(declare-fun x0_ack!1141 () (_ BitVec 64))
(declare-fun y0_ack!1138 () (_ BitVec 64))
(declare-fun x_ack!1139 () (_ BitVec 64))
(declare-fun y_ack!1140 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1141) ((_ to_fp 11 53) x1_ack!1137))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1138) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1139) ((_ to_fp 11 53) x0_ack!1141))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1139) ((_ to_fp 11 53) x1_ack!1137)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1140) ((_ to_fp 11 53) y0_ack!1138))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1140) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1137)
                       ((_ to_fp 11 53) x0_ack!1141))
               ((_ to_fp 11 53) x0_ack!1141))
       ((_ to_fp 11 53) x1_ack!1137)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1137)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1137)
                       ((_ to_fp 11 53) x0_ack!1141)))
       ((_ to_fp 11 53) x0_ack!1141)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!1140 y0_ack!1138))

(check-sat)
(exit)
