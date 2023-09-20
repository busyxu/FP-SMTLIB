(declare-fun x1_ack!1619 () (_ BitVec 64))
(declare-fun x0_ack!1622 () (_ BitVec 64))
(declare-fun x2_ack!1620 () (_ BitVec 64))
(declare-fun xx_ack!1621 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1622) ((_ to_fp 11 53) x1_ack!1619)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1619) ((_ to_fp 11 53) x2_ack!1620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1619)
                       ((_ to_fp 11 53) x0_ack!1622))
               ((_ to_fp 11 53) x0_ack!1622))
       ((_ to_fp 11 53) x1_ack!1619)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1619)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1619)
                       ((_ to_fp 11 53) x0_ack!1622)))
       ((_ to_fp 11 53) x0_ack!1622)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1620)
                       ((_ to_fp 11 53) x1_ack!1619))
               ((_ to_fp 11 53) x1_ack!1619))
       ((_ to_fp 11 53) x2_ack!1620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1620)
                       ((_ to_fp 11 53) x1_ack!1619)))
       ((_ to_fp 11 53) x1_ack!1619)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1619)
                    ((_ to_fp 11 53) x0_ack!1622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1620)
                    ((_ to_fp 11 53) x1_ack!1619))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1621) ((_ to_fp 11 53) x0_ack!1622))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1621) ((_ to_fp 11 53) x2_ack!1620))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1621) ((_ to_fp 11 53) x0_ack!1622))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1621) ((_ to_fp 11 53) x1_ack!1619)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1619) ((_ to_fp 11 53) xx_ack!1621))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1620)
               ((_ to_fp 11 53) x1_ack!1619))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
