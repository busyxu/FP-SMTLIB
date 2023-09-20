(declare-fun x1_ack!1167 () (_ BitVec 64))
(declare-fun x0_ack!1171 () (_ BitVec 64))
(declare-fun y0_ack!1168 () (_ BitVec 64))
(declare-fun x_ack!1169 () (_ BitVec 64))
(declare-fun y_ack!1170 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1171) ((_ to_fp 11 53) x1_ack!1167))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1169) ((_ to_fp 11 53) x0_ack!1171))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1169) ((_ to_fp 11 53) x1_ack!1167))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1170) ((_ to_fp 11 53) y0_ack!1168)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1167)
                       ((_ to_fp 11 53) x0_ack!1171))
               ((_ to_fp 11 53) x0_ack!1171))
       ((_ to_fp 11 53) x1_ack!1167)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1167)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1167)
                       ((_ to_fp 11 53) x0_ack!1171)))
       ((_ to_fp 11 53) x0_ack!1171)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!1168))

(check-sat)
(exit)
