(declare-fun x1_ack!1750 () (_ BitVec 64))
(declare-fun x0_ack!1753 () (_ BitVec 64))
(declare-fun x2_ack!1751 () (_ BitVec 64))
(declare-fun xx_ack!1752 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1753) ((_ to_fp 11 53) x1_ack!1750)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1750) ((_ to_fp 11 53) x2_ack!1751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1750)
                       ((_ to_fp 11 53) x0_ack!1753))
               ((_ to_fp 11 53) x0_ack!1753))
       ((_ to_fp 11 53) x1_ack!1750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1750)
                       ((_ to_fp 11 53) x0_ack!1753)))
       ((_ to_fp 11 53) x0_ack!1753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1751)
                       ((_ to_fp 11 53) x1_ack!1750))
               ((_ to_fp 11 53) x1_ack!1750))
       ((_ to_fp 11 53) x2_ack!1751)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1751)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1751)
                       ((_ to_fp 11 53) x1_ack!1750)))
       ((_ to_fp 11 53) x1_ack!1750)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1750)
                    ((_ to_fp 11 53) x0_ack!1753))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1751)
                    ((_ to_fp 11 53) x1_ack!1750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1752) ((_ to_fp 11 53) x0_ack!1753))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1752) ((_ to_fp 11 53) x2_ack!1751))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1752) ((_ to_fp 11 53) x0_ack!1753))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1752) ((_ to_fp 11 53) x1_ack!1750)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1750) ((_ to_fp 11 53) xx_ack!1752))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1751)
               ((_ to_fp 11 53) x1_ack!1750))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
