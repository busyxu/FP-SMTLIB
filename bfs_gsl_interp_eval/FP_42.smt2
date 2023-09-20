(declare-fun x1_ack!1358 () (_ BitVec 64))
(declare-fun x0_ack!1361 () (_ BitVec 64))
(declare-fun x2_ack!1359 () (_ BitVec 64))
(declare-fun xx_ack!1360 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1361) ((_ to_fp 11 53) x1_ack!1358)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1358) ((_ to_fp 11 53) x2_ack!1359)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1358)
                       ((_ to_fp 11 53) x0_ack!1361))
               ((_ to_fp 11 53) x0_ack!1361))
       ((_ to_fp 11 53) x1_ack!1358)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1358)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1358)
                       ((_ to_fp 11 53) x0_ack!1361)))
       ((_ to_fp 11 53) x0_ack!1361)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1359)
                       ((_ to_fp 11 53) x1_ack!1358))
               ((_ to_fp 11 53) x1_ack!1358))
       ((_ to_fp 11 53) x2_ack!1359)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1359)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1359)
                       ((_ to_fp 11 53) x1_ack!1358)))
       ((_ to_fp 11 53) x1_ack!1358)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1358)
                    ((_ to_fp 11 53) x0_ack!1361))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1359)
                    ((_ to_fp 11 53) x1_ack!1358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1360) ((_ to_fp 11 53) x0_ack!1361))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1360) ((_ to_fp 11 53) x2_ack!1359))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1360) ((_ to_fp 11 53) x0_ack!1361))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1360) ((_ to_fp 11 53) x1_ack!1358)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1358) ((_ to_fp 11 53) xx_ack!1360))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1359)
               ((_ to_fp 11 53) x1_ack!1358))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
