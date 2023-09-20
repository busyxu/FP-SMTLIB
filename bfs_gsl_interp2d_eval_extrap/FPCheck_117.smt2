(declare-fun x1_ack!1217 () (_ BitVec 64))
(declare-fun x0_ack!1221 () (_ BitVec 64))
(declare-fun y0_ack!1218 () (_ BitVec 64))
(declare-fun x_ack!1219 () (_ BitVec 64))
(declare-fun y_ack!1220 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1221) ((_ to_fp 11 53) x1_ack!1217))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1219) ((_ to_fp 11 53) x0_ack!1221))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1219) ((_ to_fp 11 53) x1_ack!1217))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1220) ((_ to_fp 11 53) y0_ack!1218))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1220) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1217)
                       ((_ to_fp 11 53) x0_ack!1221))
               ((_ to_fp 11 53) x0_ack!1221))
       ((_ to_fp 11 53) x1_ack!1217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1217)
                       ((_ to_fp 11 53) x0_ack!1221)))
       ((_ to_fp 11 53) x0_ack!1221)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1218))
               ((_ to_fp 11 53) y0_ack!1218))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1218)))
       ((_ to_fp 11 53) y0_ack!1218)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1219 x0_ack!1221))

(check-sat)
(exit)
