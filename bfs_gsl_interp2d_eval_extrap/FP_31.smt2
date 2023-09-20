(declare-fun x1_ack!1162 () (_ BitVec 64))
(declare-fun x0_ack!1166 () (_ BitVec 64))
(declare-fun y0_ack!1163 () (_ BitVec 64))
(declare-fun x_ack!1164 () (_ BitVec 64))
(declare-fun y_ack!1165 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1166) ((_ to_fp 11 53) x1_ack!1162))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1164) ((_ to_fp 11 53) x0_ack!1166))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1164) ((_ to_fp 11 53) x1_ack!1162))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1165) ((_ to_fp 11 53) y0_ack!1163)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1162)
                       ((_ to_fp 11 53) x0_ack!1166))
               ((_ to_fp 11 53) x0_ack!1166))
       ((_ to_fp 11 53) x1_ack!1162)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1162)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1162)
                       ((_ to_fp 11 53) x0_ack!1166)))
       ((_ to_fp 11 53) x0_ack!1166)))

(check-sat)
(exit)
