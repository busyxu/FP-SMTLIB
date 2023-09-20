(declare-fun x1_ack!1436 () (_ BitVec 64))
(declare-fun x0_ack!1439 () (_ BitVec 64))
(declare-fun x2_ack!1437 () (_ BitVec 64))
(declare-fun xx_ack!1438 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1439) ((_ to_fp 11 53) x1_ack!1436)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1436) ((_ to_fp 11 53) x2_ack!1437)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1436)
                       ((_ to_fp 11 53) x0_ack!1439))
               ((_ to_fp 11 53) x0_ack!1439))
       ((_ to_fp 11 53) x1_ack!1436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1436)
                       ((_ to_fp 11 53) x0_ack!1439)))
       ((_ to_fp 11 53) x0_ack!1439)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1437)
                       ((_ to_fp 11 53) x1_ack!1436))
               ((_ to_fp 11 53) x1_ack!1436))
       ((_ to_fp 11 53) x2_ack!1437)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1437)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1437)
                       ((_ to_fp 11 53) x1_ack!1436)))
       ((_ to_fp 11 53) x1_ack!1436)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1436)
                    ((_ to_fp 11 53) x0_ack!1439))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1437)
                    ((_ to_fp 11 53) x1_ack!1436))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1438) ((_ to_fp 11 53) x0_ack!1439))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1438) ((_ to_fp 11 53) x2_ack!1437))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1438) ((_ to_fp 11 53) x0_ack!1439))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1438) ((_ to_fp 11 53) x1_ack!1436)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1436) ((_ to_fp 11 53) xx_ack!1438))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1437)
               ((_ to_fp 11 53) x1_ack!1436))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
