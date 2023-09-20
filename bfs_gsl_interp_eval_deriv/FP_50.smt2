(declare-fun x1_ack!1718 () (_ BitVec 64))
(declare-fun x0_ack!1721 () (_ BitVec 64))
(declare-fun x2_ack!1719 () (_ BitVec 64))
(declare-fun xx_ack!1720 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1721) ((_ to_fp 11 53) x1_ack!1718)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1718) ((_ to_fp 11 53) x2_ack!1719)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1718)
                       ((_ to_fp 11 53) x0_ack!1721))
               ((_ to_fp 11 53) x0_ack!1721))
       ((_ to_fp 11 53) x1_ack!1718)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1718)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1718)
                       ((_ to_fp 11 53) x0_ack!1721)))
       ((_ to_fp 11 53) x0_ack!1721)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1719)
                       ((_ to_fp 11 53) x1_ack!1718))
               ((_ to_fp 11 53) x1_ack!1718))
       ((_ to_fp 11 53) x2_ack!1719)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1719)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1719)
                       ((_ to_fp 11 53) x1_ack!1718)))
       ((_ to_fp 11 53) x1_ack!1718)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1718)
                    ((_ to_fp 11 53) x0_ack!1721))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1719)
                    ((_ to_fp 11 53) x1_ack!1718))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1720) ((_ to_fp 11 53) x0_ack!1721))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1720) ((_ to_fp 11 53) x2_ack!1719))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1720) ((_ to_fp 11 53) x0_ack!1721))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1720) ((_ to_fp 11 53) x1_ack!1718)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1718) ((_ to_fp 11 53) xx_ack!1720))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1719)
               ((_ to_fp 11 53) x1_ack!1718))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
