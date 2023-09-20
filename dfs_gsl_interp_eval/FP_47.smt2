(declare-fun x1_ack!1378 () (_ BitVec 64))
(declare-fun x0_ack!1381 () (_ BitVec 64))
(declare-fun x2_ack!1379 () (_ BitVec 64))
(declare-fun xx_ack!1380 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1381) ((_ to_fp 11 53) x1_ack!1378)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1378) ((_ to_fp 11 53) x2_ack!1379)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1378)
                       ((_ to_fp 11 53) x0_ack!1381))
               ((_ to_fp 11 53) x0_ack!1381))
       ((_ to_fp 11 53) x1_ack!1378)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1378)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1378)
                       ((_ to_fp 11 53) x0_ack!1381)))
       ((_ to_fp 11 53) x0_ack!1381)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1379)
                       ((_ to_fp 11 53) x1_ack!1378))
               ((_ to_fp 11 53) x1_ack!1378))
       ((_ to_fp 11 53) x2_ack!1379)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1379)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1379)
                       ((_ to_fp 11 53) x1_ack!1378)))
       ((_ to_fp 11 53) x1_ack!1378)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1378)
                    ((_ to_fp 11 53) x0_ack!1381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1379)
                    ((_ to_fp 11 53) x1_ack!1378))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1380) ((_ to_fp 11 53) x0_ack!1381))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1380) ((_ to_fp 11 53) x2_ack!1379))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1380) ((_ to_fp 11 53) x0_ack!1381))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1380) ((_ to_fp 11 53) x1_ack!1378))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1378)
               ((_ to_fp 11 53) x0_ack!1381))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
