(declare-fun x1_ack!1227 () (_ BitVec 64))
(declare-fun x0_ack!1231 () (_ BitVec 64))
(declare-fun y0_ack!1228 () (_ BitVec 64))
(declare-fun x_ack!1229 () (_ BitVec 64))
(declare-fun y_ack!1230 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1231) ((_ to_fp 11 53) x1_ack!1227))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1228) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1229) ((_ to_fp 11 53) x0_ack!1231))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1229) ((_ to_fp 11 53) x1_ack!1227))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1230) ((_ to_fp 11 53) y0_ack!1228))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1230) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1227)
                       ((_ to_fp 11 53) x0_ack!1231))
               ((_ to_fp 11 53) x0_ack!1231))
       ((_ to_fp 11 53) x1_ack!1227)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1227)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1227)
                       ((_ to_fp 11 53) x0_ack!1231)))
       ((_ to_fp 11 53) x0_ack!1231)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1228))
               ((_ to_fp 11 53) y0_ack!1228))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1228)))
       ((_ to_fp 11 53) y0_ack!1228)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!1229 x0_ack!1231))

(check-sat)
(exit)
