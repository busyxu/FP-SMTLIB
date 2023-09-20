(declare-fun x1_ack!1312 () (_ BitVec 64))
(declare-fun x0_ack!1316 () (_ BitVec 64))
(declare-fun y0_ack!1313 () (_ BitVec 64))
(declare-fun x_ack!1314 () (_ BitVec 64))
(declare-fun y_ack!1315 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1316) ((_ to_fp 11 53) x1_ack!1312))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1314) ((_ to_fp 11 53) x0_ack!1316))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1314) ((_ to_fp 11 53) x1_ack!1312))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1315) ((_ to_fp 11 53) y0_ack!1313))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1315) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1312)
                       ((_ to_fp 11 53) x0_ack!1316))
               ((_ to_fp 11 53) x0_ack!1316))
       ((_ to_fp 11 53) x1_ack!1312)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1312)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1312)
                       ((_ to_fp 11 53) x0_ack!1316)))
       ((_ to_fp 11 53) x0_ack!1316)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1313))
               ((_ to_fp 11 53) y0_ack!1313))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1313)))
       ((_ to_fp 11 53) y0_ack!1313)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!1315 y0_ack!1313))

(check-sat)
(exit)
