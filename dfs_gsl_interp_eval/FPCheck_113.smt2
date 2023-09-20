(declare-fun x1_ack!1246 () (_ BitVec 64))
(declare-fun x0_ack!1251 () (_ BitVec 64))
(declare-fun x2_ack!1247 () (_ BitVec 64))
(declare-fun xx_ack!1250 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1248 () (_ BitVec 64))
(declare-fun y1_ack!1249 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1251) ((_ to_fp 11 53) x1_ack!1246)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1246) ((_ to_fp 11 53) x2_ack!1247)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1246)
                       ((_ to_fp 11 53) x0_ack!1251))
               ((_ to_fp 11 53) x0_ack!1251))
       ((_ to_fp 11 53) x1_ack!1246)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1246)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1246)
                       ((_ to_fp 11 53) x0_ack!1251)))
       ((_ to_fp 11 53) x0_ack!1251)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1247)
                       ((_ to_fp 11 53) x1_ack!1246))
               ((_ to_fp 11 53) x1_ack!1246))
       ((_ to_fp 11 53) x2_ack!1247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1247)
                       ((_ to_fp 11 53) x1_ack!1246)))
       ((_ to_fp 11 53) x1_ack!1246)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1246)
                    ((_ to_fp 11 53) x0_ack!1251))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1247)
                    ((_ to_fp 11 53) x1_ack!1246))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1250) ((_ to_fp 11 53) x0_ack!1251))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1250) ((_ to_fp 11 53) x2_ack!1247))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1250) ((_ to_fp 11 53) x0_ack!1251))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1250) ((_ to_fp 11 53) x1_ack!1246))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1246)
               ((_ to_fp 11 53) x0_ack!1251))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1249)
          ((_ to_fp 11 53) y0_ack!1248))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1246)
          ((_ to_fp 11 53) x0_ack!1251))))

(check-sat)
(exit)
