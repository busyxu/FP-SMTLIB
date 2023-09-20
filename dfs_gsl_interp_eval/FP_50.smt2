(declare-fun x1_ack!1550 () (_ BitVec 64))
(declare-fun x0_ack!1553 () (_ BitVec 64))
(declare-fun x2_ack!1551 () (_ BitVec 64))
(declare-fun xx_ack!1552 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1553) ((_ to_fp 11 53) x1_ack!1550)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1550) ((_ to_fp 11 53) x2_ack!1551)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1550)
                       ((_ to_fp 11 53) x0_ack!1553))
               ((_ to_fp 11 53) x0_ack!1553))
       ((_ to_fp 11 53) x1_ack!1550)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1550)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1550)
                       ((_ to_fp 11 53) x0_ack!1553)))
       ((_ to_fp 11 53) x0_ack!1553)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1551)
                       ((_ to_fp 11 53) x1_ack!1550))
               ((_ to_fp 11 53) x1_ack!1550))
       ((_ to_fp 11 53) x2_ack!1551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1551)
                       ((_ to_fp 11 53) x1_ack!1550)))
       ((_ to_fp 11 53) x1_ack!1550)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1550)
                    ((_ to_fp 11 53) x0_ack!1553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1551)
                    ((_ to_fp 11 53) x1_ack!1550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1552) ((_ to_fp 11 53) x0_ack!1553))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1552) ((_ to_fp 11 53) x2_ack!1551))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1552) ((_ to_fp 11 53) x0_ack!1553))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1552) ((_ to_fp 11 53) x1_ack!1550))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1550)
               ((_ to_fp 11 53) x0_ack!1553))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
