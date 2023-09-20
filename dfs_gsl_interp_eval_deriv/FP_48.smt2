(declare-fun x1_ack!1479 () (_ BitVec 64))
(declare-fun x0_ack!1482 () (_ BitVec 64))
(declare-fun x2_ack!1480 () (_ BitVec 64))
(declare-fun xx_ack!1481 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1482) ((_ to_fp 11 53) x1_ack!1479)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1479) ((_ to_fp 11 53) x2_ack!1480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1479)
                       ((_ to_fp 11 53) x0_ack!1482))
               ((_ to_fp 11 53) x0_ack!1482))
       ((_ to_fp 11 53) x1_ack!1479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1479)
                       ((_ to_fp 11 53) x0_ack!1482)))
       ((_ to_fp 11 53) x0_ack!1482)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1480)
                       ((_ to_fp 11 53) x1_ack!1479))
               ((_ to_fp 11 53) x1_ack!1479))
       ((_ to_fp 11 53) x2_ack!1480)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1480)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1480)
                       ((_ to_fp 11 53) x1_ack!1479)))
       ((_ to_fp 11 53) x1_ack!1479)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1479)
                    ((_ to_fp 11 53) x0_ack!1482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1480)
                    ((_ to_fp 11 53) x1_ack!1479))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1481) ((_ to_fp 11 53) x0_ack!1482))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1481) ((_ to_fp 11 53) x2_ack!1480))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1481) ((_ to_fp 11 53) x0_ack!1482))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1481) ((_ to_fp 11 53) x1_ack!1479))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1479)
               ((_ to_fp 11 53) x0_ack!1482))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
