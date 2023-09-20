(declare-fun x1_ack!1157 () (_ BitVec 64))
(declare-fun x0_ack!1161 () (_ BitVec 64))
(declare-fun y0_ack!1158 () (_ BitVec 64))
(declare-fun x_ack!1159 () (_ BitVec 64))
(declare-fun y_ack!1160 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1161) ((_ to_fp 11 53) x1_ack!1157))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1158) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1159) ((_ to_fp 11 53) x0_ack!1161))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1159) ((_ to_fp 11 53) x1_ack!1157)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1160) ((_ to_fp 11 53) y0_ack!1158))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1160) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1157)
                       ((_ to_fp 11 53) x0_ack!1161))
               ((_ to_fp 11 53) x0_ack!1161))
       ((_ to_fp 11 53) x1_ack!1157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1157)
                       ((_ to_fp 11 53) x0_ack!1161)))
       ((_ to_fp 11 53) x0_ack!1161)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!1160 y0_ack!1158))

(check-sat)
(exit)
