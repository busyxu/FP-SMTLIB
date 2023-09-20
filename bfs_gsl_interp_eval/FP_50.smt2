(declare-fun x1_ack!1704 () (_ BitVec 64))
(declare-fun x0_ack!1707 () (_ BitVec 64))
(declare-fun x2_ack!1705 () (_ BitVec 64))
(declare-fun xx_ack!1706 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1707) ((_ to_fp 11 53) x1_ack!1704)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1704) ((_ to_fp 11 53) x2_ack!1705)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1704)
                       ((_ to_fp 11 53) x0_ack!1707))
               ((_ to_fp 11 53) x0_ack!1707))
       ((_ to_fp 11 53) x1_ack!1704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1704)
                       ((_ to_fp 11 53) x0_ack!1707)))
       ((_ to_fp 11 53) x0_ack!1707)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1705)
                       ((_ to_fp 11 53) x1_ack!1704))
               ((_ to_fp 11 53) x1_ack!1704))
       ((_ to_fp 11 53) x2_ack!1705)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1705)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1705)
                       ((_ to_fp 11 53) x1_ack!1704)))
       ((_ to_fp 11 53) x1_ack!1704)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1704)
                    ((_ to_fp 11 53) x0_ack!1707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1705)
                    ((_ to_fp 11 53) x1_ack!1704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1706) ((_ to_fp 11 53) x0_ack!1707))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1706) ((_ to_fp 11 53) x2_ack!1705))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1706) ((_ to_fp 11 53) x0_ack!1707))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1706) ((_ to_fp 11 53) x1_ack!1704)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1704) ((_ to_fp 11 53) xx_ack!1706))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1705)
               ((_ to_fp 11 53) x1_ack!1704))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
