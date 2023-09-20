(declare-fun x1_ack!1175 () (_ BitVec 64))
(declare-fun x0_ack!1180 () (_ BitVec 64))
(declare-fun x2_ack!1176 () (_ BitVec 64))
(declare-fun xx_ack!1179 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1177 () (_ BitVec 64))
(declare-fun y1_ack!1178 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1180) ((_ to_fp 11 53) x1_ack!1175)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1175) ((_ to_fp 11 53) x2_ack!1176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1175)
                       ((_ to_fp 11 53) x0_ack!1180))
               ((_ to_fp 11 53) x0_ack!1180))
       ((_ to_fp 11 53) x1_ack!1175)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1175)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1175)
                       ((_ to_fp 11 53) x0_ack!1180)))
       ((_ to_fp 11 53) x0_ack!1180)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1176)
                       ((_ to_fp 11 53) x1_ack!1175))
               ((_ to_fp 11 53) x1_ack!1175))
       ((_ to_fp 11 53) x2_ack!1176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1176)
                       ((_ to_fp 11 53) x1_ack!1175)))
       ((_ to_fp 11 53) x1_ack!1175)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1175)
                    ((_ to_fp 11 53) x0_ack!1180))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1176)
                    ((_ to_fp 11 53) x1_ack!1175))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1179) ((_ to_fp 11 53) x0_ack!1180))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1179) ((_ to_fp 11 53) x2_ack!1176))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1179) ((_ to_fp 11 53) x0_ack!1180))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1179) ((_ to_fp 11 53) x1_ack!1175))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1175)
               ((_ to_fp 11 53) x0_ack!1180))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!1178 y0_ack!1177))

(check-sat)
(exit)
