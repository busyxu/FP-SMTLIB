(declare-fun x1_ack!1757 () (_ BitVec 64))
(declare-fun x0_ack!1760 () (_ BitVec 64))
(declare-fun x2_ack!1758 () (_ BitVec 64))
(declare-fun xx_ack!1759 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1760) ((_ to_fp 11 53) x1_ack!1757)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1757) ((_ to_fp 11 53) x2_ack!1758)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1757)
                       ((_ to_fp 11 53) x0_ack!1760))
               ((_ to_fp 11 53) x0_ack!1760))
       ((_ to_fp 11 53) x1_ack!1757)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1757)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1757)
                       ((_ to_fp 11 53) x0_ack!1760)))
       ((_ to_fp 11 53) x0_ack!1760)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1758)
                       ((_ to_fp 11 53) x1_ack!1757))
               ((_ to_fp 11 53) x1_ack!1757))
       ((_ to_fp 11 53) x2_ack!1758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1758)
                       ((_ to_fp 11 53) x1_ack!1757)))
       ((_ to_fp 11 53) x1_ack!1757)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1757)
                    ((_ to_fp 11 53) x0_ack!1760))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1758)
                    ((_ to_fp 11 53) x1_ack!1757))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1759) ((_ to_fp 11 53) x0_ack!1760))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1759) ((_ to_fp 11 53) x2_ack!1758))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1759) ((_ to_fp 11 53) x0_ack!1760))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1759) ((_ to_fp 11 53) x1_ack!1757)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1757) ((_ to_fp 11 53) xx_ack!1759))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1758)
               ((_ to_fp 11 53) x1_ack!1757))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
