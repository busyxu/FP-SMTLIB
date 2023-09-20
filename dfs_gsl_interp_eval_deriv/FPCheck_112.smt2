(declare-fun x1_ack!1237 () (_ BitVec 64))
(declare-fun x0_ack!1242 () (_ BitVec 64))
(declare-fun x2_ack!1238 () (_ BitVec 64))
(declare-fun xx_ack!1241 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1239 () (_ BitVec 64))
(declare-fun y1_ack!1240 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1242) ((_ to_fp 11 53) x1_ack!1237)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1237) ((_ to_fp 11 53) x2_ack!1238)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1237)
                       ((_ to_fp 11 53) x0_ack!1242))
               ((_ to_fp 11 53) x0_ack!1242))
       ((_ to_fp 11 53) x1_ack!1237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1237)
                       ((_ to_fp 11 53) x0_ack!1242)))
       ((_ to_fp 11 53) x0_ack!1242)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1238)
                       ((_ to_fp 11 53) x1_ack!1237))
               ((_ to_fp 11 53) x1_ack!1237))
       ((_ to_fp 11 53) x2_ack!1238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1238)
                       ((_ to_fp 11 53) x1_ack!1237)))
       ((_ to_fp 11 53) x1_ack!1237)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1237)
                    ((_ to_fp 11 53) x0_ack!1242))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1238)
                    ((_ to_fp 11 53) x1_ack!1237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1241) ((_ to_fp 11 53) x0_ack!1242))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1241) ((_ to_fp 11 53) x2_ack!1238))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1241) ((_ to_fp 11 53) x0_ack!1242))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1241) ((_ to_fp 11 53) x1_ack!1237))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1237)
               ((_ to_fp 11 53) x0_ack!1242))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1240)
          ((_ to_fp 11 53) y0_ack!1239))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1237)
          ((_ to_fp 11 53) x0_ack!1242))))

(check-sat)
(exit)
