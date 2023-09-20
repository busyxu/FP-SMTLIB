(declare-fun x1_ack!1534 () (_ BitVec 64))
(declare-fun x0_ack!1537 () (_ BitVec 64))
(declare-fun x2_ack!1535 () (_ BitVec 64))
(declare-fun xx_ack!1536 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1537) ((_ to_fp 11 53) x1_ack!1534)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1534) ((_ to_fp 11 53) x2_ack!1535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1534)
                       ((_ to_fp 11 53) x0_ack!1537))
               ((_ to_fp 11 53) x0_ack!1537))
       ((_ to_fp 11 53) x1_ack!1534)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1534)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1534)
                       ((_ to_fp 11 53) x0_ack!1537)))
       ((_ to_fp 11 53) x0_ack!1537)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1535)
                       ((_ to_fp 11 53) x1_ack!1534))
               ((_ to_fp 11 53) x1_ack!1534))
       ((_ to_fp 11 53) x2_ack!1535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1535)
                       ((_ to_fp 11 53) x1_ack!1534)))
       ((_ to_fp 11 53) x1_ack!1534)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1534)
                    ((_ to_fp 11 53) x0_ack!1537))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1535)
                    ((_ to_fp 11 53) x1_ack!1534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1536) ((_ to_fp 11 53) x0_ack!1537))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1536) ((_ to_fp 11 53) x2_ack!1535))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1536) ((_ to_fp 11 53) x0_ack!1537))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1536) ((_ to_fp 11 53) x1_ack!1534)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1534) ((_ to_fp 11 53) xx_ack!1536))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1535)
               ((_ to_fp 11 53) x1_ack!1534))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
