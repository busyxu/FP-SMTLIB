(declare-fun x1_ack!1580 () (_ BitVec 64))
(declare-fun x0_ack!1583 () (_ BitVec 64))
(declare-fun x2_ack!1581 () (_ BitVec 64))
(declare-fun xx_ack!1582 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1583) ((_ to_fp 11 53) x1_ack!1580)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1580) ((_ to_fp 11 53) x2_ack!1581)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1580)
                       ((_ to_fp 11 53) x0_ack!1583))
               ((_ to_fp 11 53) x0_ack!1583))
       ((_ to_fp 11 53) x1_ack!1580)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1580)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1580)
                       ((_ to_fp 11 53) x0_ack!1583)))
       ((_ to_fp 11 53) x0_ack!1583)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1581)
                       ((_ to_fp 11 53) x1_ack!1580))
               ((_ to_fp 11 53) x1_ack!1580))
       ((_ to_fp 11 53) x2_ack!1581)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1581)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1581)
                       ((_ to_fp 11 53) x1_ack!1580)))
       ((_ to_fp 11 53) x1_ack!1580)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1580)
                    ((_ to_fp 11 53) x0_ack!1583))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1581)
                    ((_ to_fp 11 53) x1_ack!1580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1582) ((_ to_fp 11 53) x0_ack!1583))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1582) ((_ to_fp 11 53) x2_ack!1581))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1582) ((_ to_fp 11 53) x0_ack!1583))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1582) ((_ to_fp 11 53) x1_ack!1580)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1580) ((_ to_fp 11 53) xx_ack!1582))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1581)
               ((_ to_fp 11 53) x1_ack!1580))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
