(declare-fun x1_ack!1541 () (_ BitVec 64))
(declare-fun x0_ack!1544 () (_ BitVec 64))
(declare-fun x2_ack!1542 () (_ BitVec 64))
(declare-fun xx_ack!1543 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1544) ((_ to_fp 11 53) x1_ack!1541)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1541) ((_ to_fp 11 53) x2_ack!1542)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1541)
                       ((_ to_fp 11 53) x0_ack!1544))
               ((_ to_fp 11 53) x0_ack!1544))
       ((_ to_fp 11 53) x1_ack!1541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1541)
                       ((_ to_fp 11 53) x0_ack!1544)))
       ((_ to_fp 11 53) x0_ack!1544)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1542)
                       ((_ to_fp 11 53) x1_ack!1541))
               ((_ to_fp 11 53) x1_ack!1541))
       ((_ to_fp 11 53) x2_ack!1542)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1542)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1542)
                       ((_ to_fp 11 53) x1_ack!1541)))
       ((_ to_fp 11 53) x1_ack!1541)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1541)
                    ((_ to_fp 11 53) x0_ack!1544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1542)
                    ((_ to_fp 11 53) x1_ack!1541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x0_ack!1544))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x2_ack!1542))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x0_ack!1544))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x1_ack!1541)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1541) ((_ to_fp 11 53) xx_ack!1543))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1542)
               ((_ to_fp 11 53) x1_ack!1541))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
