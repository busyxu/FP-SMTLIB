(declare-fun x1_ack!1280 () (_ BitVec 64))
(declare-fun x0_ack!1283 () (_ BitVec 64))
(declare-fun x2_ack!1281 () (_ BitVec 64))
(declare-fun xx_ack!1282 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1283) ((_ to_fp 11 53) x1_ack!1280)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1280) ((_ to_fp 11 53) x2_ack!1281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1280)
                       ((_ to_fp 11 53) x0_ack!1283))
               ((_ to_fp 11 53) x0_ack!1283))
       ((_ to_fp 11 53) x1_ack!1280)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1280)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1280)
                       ((_ to_fp 11 53) x0_ack!1283)))
       ((_ to_fp 11 53) x0_ack!1283)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1281)
                       ((_ to_fp 11 53) x1_ack!1280))
               ((_ to_fp 11 53) x1_ack!1280))
       ((_ to_fp 11 53) x2_ack!1281)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1281)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1281)
                       ((_ to_fp 11 53) x1_ack!1280)))
       ((_ to_fp 11 53) x1_ack!1280)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1280)
                    ((_ to_fp 11 53) x0_ack!1283))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1281)
                    ((_ to_fp 11 53) x1_ack!1280))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1282) ((_ to_fp 11 53) x0_ack!1283))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1282) ((_ to_fp 11 53) x2_ack!1281))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1282) ((_ to_fp 11 53) x0_ack!1283))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1282) ((_ to_fp 11 53) x1_ack!1280)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1280) ((_ to_fp 11 53) xx_ack!1282))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1281)
               ((_ to_fp 11 53) x1_ack!1280))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
