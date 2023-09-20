(declare-fun x1_ack!1587 () (_ BitVec 64))
(declare-fun x0_ack!1590 () (_ BitVec 64))
(declare-fun x2_ack!1588 () (_ BitVec 64))
(declare-fun xx_ack!1589 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1590) ((_ to_fp 11 53) x1_ack!1587)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1587) ((_ to_fp 11 53) x2_ack!1588)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1587)
                       ((_ to_fp 11 53) x0_ack!1590))
               ((_ to_fp 11 53) x0_ack!1590))
       ((_ to_fp 11 53) x1_ack!1587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1587)
                       ((_ to_fp 11 53) x0_ack!1590)))
       ((_ to_fp 11 53) x0_ack!1590)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1588)
                       ((_ to_fp 11 53) x1_ack!1587))
               ((_ to_fp 11 53) x1_ack!1587))
       ((_ to_fp 11 53) x2_ack!1588)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1588)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1588)
                       ((_ to_fp 11 53) x1_ack!1587)))
       ((_ to_fp 11 53) x1_ack!1587)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1587)
                    ((_ to_fp 11 53) x0_ack!1590))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1588)
                    ((_ to_fp 11 53) x1_ack!1587))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1589) ((_ to_fp 11 53) x0_ack!1590))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1589) ((_ to_fp 11 53) x2_ack!1588))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1589) ((_ to_fp 11 53) x0_ack!1590))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1589) ((_ to_fp 11 53) x1_ack!1587)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1587) ((_ to_fp 11 53) xx_ack!1589))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1588)
               ((_ to_fp 11 53) x1_ack!1587))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
