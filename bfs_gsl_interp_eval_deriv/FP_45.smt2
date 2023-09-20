(declare-fun x1_ack!1495 () (_ BitVec 64))
(declare-fun x0_ack!1498 () (_ BitVec 64))
(declare-fun x2_ack!1496 () (_ BitVec 64))
(declare-fun xx_ack!1497 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1498) ((_ to_fp 11 53) x1_ack!1495)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1495) ((_ to_fp 11 53) x2_ack!1496)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1495)
                       ((_ to_fp 11 53) x0_ack!1498))
               ((_ to_fp 11 53) x0_ack!1498))
       ((_ to_fp 11 53) x1_ack!1495)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1495)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1495)
                       ((_ to_fp 11 53) x0_ack!1498)))
       ((_ to_fp 11 53) x0_ack!1498)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1496)
                       ((_ to_fp 11 53) x1_ack!1495))
               ((_ to_fp 11 53) x1_ack!1495))
       ((_ to_fp 11 53) x2_ack!1496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1496)
                       ((_ to_fp 11 53) x1_ack!1495)))
       ((_ to_fp 11 53) x1_ack!1495)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1495)
                    ((_ to_fp 11 53) x0_ack!1498))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1496)
                    ((_ to_fp 11 53) x1_ack!1495))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x0_ack!1498))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x2_ack!1496))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x0_ack!1498))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x1_ack!1495)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1495) ((_ to_fp 11 53) xx_ack!1497))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1496)
               ((_ to_fp 11 53) x1_ack!1495))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
