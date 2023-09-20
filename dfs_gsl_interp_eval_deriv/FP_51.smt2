(declare-fun x1_ack!1722 () (_ BitVec 64))
(declare-fun x0_ack!1725 () (_ BitVec 64))
(declare-fun x2_ack!1723 () (_ BitVec 64))
(declare-fun xx_ack!1724 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1725) ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1722) ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1725))
               ((_ to_fp 11 53) x0_ack!1725))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1725)))
       ((_ to_fp 11 53) x0_ack!1725)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722))
               ((_ to_fp 11 53) x1_ack!1722))
       ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722)))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1722)
                    ((_ to_fp 11 53) x0_ack!1725))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1723)
                    ((_ to_fp 11 53) x1_ack!1722))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1724) ((_ to_fp 11 53) x0_ack!1725))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1724) ((_ to_fp 11 53) x2_ack!1723))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1724) ((_ to_fp 11 53) x0_ack!1725))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1724) ((_ to_fp 11 53) x1_ack!1722))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1722)
               ((_ to_fp 11 53) x0_ack!1725))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
