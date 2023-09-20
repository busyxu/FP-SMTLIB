(declare-fun x1_ack!1082 () (_ BitVec 64))
(declare-fun x0_ack!1086 () (_ BitVec 64))
(declare-fun y0_ack!1083 () (_ BitVec 64))
(declare-fun x_ack!1084 () (_ BitVec 64))
(declare-fun y_ack!1085 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1086) ((_ to_fp 11 53) x1_ack!1082))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1083) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1084) ((_ to_fp 11 53) x0_ack!1086))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1084) ((_ to_fp 11 53) x1_ack!1082)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1085) ((_ to_fp 11 53) y0_ack!1083))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1085) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1082)
                       ((_ to_fp 11 53) x0_ack!1086))
               ((_ to_fp 11 53) x0_ack!1086))
       ((_ to_fp 11 53) x1_ack!1082)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1082)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1082)
                       ((_ to_fp 11 53) x0_ack!1086)))
       ((_ to_fp 11 53) x0_ack!1086)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!1084 x0_ack!1086))

(check-sat)
(exit)
