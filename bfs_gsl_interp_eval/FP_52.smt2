(declare-fun x1_ack!1789 () (_ BitVec 64))
(declare-fun x0_ack!1792 () (_ BitVec 64))
(declare-fun x2_ack!1790 () (_ BitVec 64))
(declare-fun xx_ack!1791 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1792) ((_ to_fp 11 53) x1_ack!1789)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1789) ((_ to_fp 11 53) x2_ack!1790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1789)
                       ((_ to_fp 11 53) x0_ack!1792))
               ((_ to_fp 11 53) x0_ack!1792))
       ((_ to_fp 11 53) x1_ack!1789)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1789)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1789)
                       ((_ to_fp 11 53) x0_ack!1792)))
       ((_ to_fp 11 53) x0_ack!1792)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1790)
                       ((_ to_fp 11 53) x1_ack!1789))
               ((_ to_fp 11 53) x1_ack!1789))
       ((_ to_fp 11 53) x2_ack!1790)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1790)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1790)
                       ((_ to_fp 11 53) x1_ack!1789)))
       ((_ to_fp 11 53) x1_ack!1789)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1789)
                    ((_ to_fp 11 53) x0_ack!1792))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1790)
                    ((_ to_fp 11 53) x1_ack!1789))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1791) ((_ to_fp 11 53) x0_ack!1792))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1791) ((_ to_fp 11 53) x2_ack!1790))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1791) ((_ to_fp 11 53) x0_ack!1792))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1791) ((_ to_fp 11 53) x1_ack!1789)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1789) ((_ to_fp 11 53) xx_ack!1791))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1790)
               ((_ to_fp 11 53) x1_ack!1789))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
