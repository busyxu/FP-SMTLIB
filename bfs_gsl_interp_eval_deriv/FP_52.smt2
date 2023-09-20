(declare-fun x1_ack!1761 () (_ BitVec 64))
(declare-fun x0_ack!1764 () (_ BitVec 64))
(declare-fun x2_ack!1762 () (_ BitVec 64))
(declare-fun xx_ack!1763 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1764) ((_ to_fp 11 53) x1_ack!1761)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1761) ((_ to_fp 11 53) x2_ack!1762)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1761)
                       ((_ to_fp 11 53) x0_ack!1764))
               ((_ to_fp 11 53) x0_ack!1764))
       ((_ to_fp 11 53) x1_ack!1761)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1761)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1761)
                       ((_ to_fp 11 53) x0_ack!1764)))
       ((_ to_fp 11 53) x0_ack!1764)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1762)
                       ((_ to_fp 11 53) x1_ack!1761))
               ((_ to_fp 11 53) x1_ack!1761))
       ((_ to_fp 11 53) x2_ack!1762)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1762)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1762)
                       ((_ to_fp 11 53) x1_ack!1761)))
       ((_ to_fp 11 53) x1_ack!1761)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1761)
                    ((_ to_fp 11 53) x0_ack!1764))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1762)
                    ((_ to_fp 11 53) x1_ack!1761))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x0_ack!1764))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x2_ack!1762))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x0_ack!1764))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x1_ack!1761)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1761) ((_ to_fp 11 53) xx_ack!1763))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1762)
                    ((_ to_fp 11 53) x1_ack!1761))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
