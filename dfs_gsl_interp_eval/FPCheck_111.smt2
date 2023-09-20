(declare-fun x1_ack!1222 () (_ BitVec 64))
(declare-fun x0_ack!1227 () (_ BitVec 64))
(declare-fun x2_ack!1223 () (_ BitVec 64))
(declare-fun xx_ack!1226 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1224 () (_ BitVec 64))
(declare-fun y1_ack!1225 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1227) ((_ to_fp 11 53) x1_ack!1222)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1222) ((_ to_fp 11 53) x2_ack!1223)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1222)
                       ((_ to_fp 11 53) x0_ack!1227))
               ((_ to_fp 11 53) x0_ack!1227))
       ((_ to_fp 11 53) x1_ack!1222)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1222)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1222)
                       ((_ to_fp 11 53) x0_ack!1227)))
       ((_ to_fp 11 53) x0_ack!1227)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1223)
                       ((_ to_fp 11 53) x1_ack!1222))
               ((_ to_fp 11 53) x1_ack!1222))
       ((_ to_fp 11 53) x2_ack!1223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1223)
                       ((_ to_fp 11 53) x1_ack!1222)))
       ((_ to_fp 11 53) x1_ack!1222)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1222)
                    ((_ to_fp 11 53) x0_ack!1227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1223)
                    ((_ to_fp 11 53) x1_ack!1222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1226) ((_ to_fp 11 53) x0_ack!1227))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1226) ((_ to_fp 11 53) x2_ack!1223))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1226) ((_ to_fp 11 53) x0_ack!1227))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1226) ((_ to_fp 11 53) x1_ack!1222))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1222)
               ((_ to_fp 11 53) x0_ack!1227))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1225)
          ((_ to_fp 11 53) y0_ack!1224))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1222)
          ((_ to_fp 11 53) x0_ack!1227))))

(check-sat)
(exit)
