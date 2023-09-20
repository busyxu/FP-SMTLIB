(declare-fun x1_ack!1599 () (_ BitVec 64))
(declare-fun x0_ack!1602 () (_ BitVec 64))
(declare-fun x2_ack!1600 () (_ BitVec 64))
(declare-fun xx_ack!1601 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1602) ((_ to_fp 11 53) x1_ack!1599)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1599) ((_ to_fp 11 53) x2_ack!1600)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1599)
                       ((_ to_fp 11 53) x0_ack!1602))
               ((_ to_fp 11 53) x0_ack!1602))
       ((_ to_fp 11 53) x1_ack!1599)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1599)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1599)
                       ((_ to_fp 11 53) x0_ack!1602)))
       ((_ to_fp 11 53) x0_ack!1602)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1600)
                       ((_ to_fp 11 53) x1_ack!1599))
               ((_ to_fp 11 53) x1_ack!1599))
       ((_ to_fp 11 53) x2_ack!1600)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1600)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1600)
                       ((_ to_fp 11 53) x1_ack!1599)))
       ((_ to_fp 11 53) x1_ack!1599)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1599)
                    ((_ to_fp 11 53) x0_ack!1602))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1600)
                    ((_ to_fp 11 53) x1_ack!1599))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x0_ack!1602))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x2_ack!1600))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x0_ack!1602))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x1_ack!1599))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1599)
               ((_ to_fp 11 53) x0_ack!1602))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
