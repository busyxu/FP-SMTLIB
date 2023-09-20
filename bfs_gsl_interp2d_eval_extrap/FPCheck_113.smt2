(declare-fun x1_ack!1182 () (_ BitVec 64))
(declare-fun x0_ack!1186 () (_ BitVec 64))
(declare-fun y0_ack!1183 () (_ BitVec 64))
(declare-fun x_ack!1184 () (_ BitVec 64))
(declare-fun y_ack!1185 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1186) ((_ to_fp 11 53) x1_ack!1182))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1183) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1184) ((_ to_fp 11 53) x0_ack!1186))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1184) ((_ to_fp 11 53) x1_ack!1182))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1185) ((_ to_fp 11 53) y0_ack!1183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1182)
                       ((_ to_fp 11 53) x0_ack!1186))
               ((_ to_fp 11 53) x0_ack!1186))
       ((_ to_fp 11 53) x1_ack!1182)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1182)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1182)
                       ((_ to_fp 11 53) x0_ack!1186)))
       ((_ to_fp 11 53) x0_ack!1186)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1183))

(check-sat)
(exit)
