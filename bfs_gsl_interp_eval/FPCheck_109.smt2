(declare-fun x1_ack!1164 () (_ BitVec 64))
(declare-fun x0_ack!1169 () (_ BitVec 64))
(declare-fun x2_ack!1165 () (_ BitVec 64))
(declare-fun xx_ack!1168 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1166 () (_ BitVec 64))
(declare-fun y2_ack!1167 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1169) ((_ to_fp 11 53) x1_ack!1164)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1164) ((_ to_fp 11 53) x2_ack!1165)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1164)
                       ((_ to_fp 11 53) x0_ack!1169))
               ((_ to_fp 11 53) x0_ack!1169))
       ((_ to_fp 11 53) x1_ack!1164)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1164)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1164)
                       ((_ to_fp 11 53) x0_ack!1169)))
       ((_ to_fp 11 53) x0_ack!1169)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1165)
                       ((_ to_fp 11 53) x1_ack!1164))
               ((_ to_fp 11 53) x1_ack!1164))
       ((_ to_fp 11 53) x2_ack!1165)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1165)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1165)
                       ((_ to_fp 11 53) x1_ack!1164)))
       ((_ to_fp 11 53) x1_ack!1164)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1164)
                    ((_ to_fp 11 53) x0_ack!1169))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1165)
                    ((_ to_fp 11 53) x1_ack!1164))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1168) ((_ to_fp 11 53) x0_ack!1169))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1168) ((_ to_fp 11 53) x2_ack!1165))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1168) ((_ to_fp 11 53) x0_ack!1169))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1168) ((_ to_fp 11 53) x1_ack!1164)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1164) ((_ to_fp 11 53) xx_ack!1168))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1165)
               ((_ to_fp 11 53) x1_ack!1164))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1167)
          ((_ to_fp 11 53) y1_ack!1166))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1165)
          ((_ to_fp 11 53) x1_ack!1164))))

(check-sat)
(exit)
