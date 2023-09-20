(declare-fun x1_ack!1237 () (_ BitVec 64))
(declare-fun x0_ack!1241 () (_ BitVec 64))
(declare-fun y0_ack!1238 () (_ BitVec 64))
(declare-fun x_ack!1239 () (_ BitVec 64))
(declare-fun y_ack!1240 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1241) ((_ to_fp 11 53) x1_ack!1237))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1238) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1239) ((_ to_fp 11 53) x0_ack!1241))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1239) ((_ to_fp 11 53) x1_ack!1237))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1240) ((_ to_fp 11 53) y0_ack!1238))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1237)
                       ((_ to_fp 11 53) x0_ack!1241))
               ((_ to_fp 11 53) x0_ack!1241))
       ((_ to_fp 11 53) x1_ack!1237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1237)
                       ((_ to_fp 11 53) x0_ack!1241)))
       ((_ to_fp 11 53) x0_ack!1241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1238))
               ((_ to_fp 11 53) y0_ack!1238))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1238)))
       ((_ to_fp 11 53) y0_ack!1238)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!1239 x0_ack!1241))

(check-sat)
(exit)
