(declare-fun x1_ack!1417 () (_ BitVec 64))
(declare-fun x0_ack!1420 () (_ BitVec 64))
(declare-fun x2_ack!1418 () (_ BitVec 64))
(declare-fun xx_ack!1419 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1420) ((_ to_fp 11 53) x1_ack!1417)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1417) ((_ to_fp 11 53) x2_ack!1418)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1417)
                       ((_ to_fp 11 53) x0_ack!1420))
               ((_ to_fp 11 53) x0_ack!1420))
       ((_ to_fp 11 53) x1_ack!1417)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1417)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1417)
                       ((_ to_fp 11 53) x0_ack!1420)))
       ((_ to_fp 11 53) x0_ack!1420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1418)
                       ((_ to_fp 11 53) x1_ack!1417))
               ((_ to_fp 11 53) x1_ack!1417))
       ((_ to_fp 11 53) x2_ack!1418)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1418)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1418)
                       ((_ to_fp 11 53) x1_ack!1417)))
       ((_ to_fp 11 53) x1_ack!1417)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1417)
                    ((_ to_fp 11 53) x0_ack!1420))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1418)
                    ((_ to_fp 11 53) x1_ack!1417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1419) ((_ to_fp 11 53) x0_ack!1420))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1419) ((_ to_fp 11 53) x2_ack!1418))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1419) ((_ to_fp 11 53) x0_ack!1420))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1419) ((_ to_fp 11 53) x1_ack!1417))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1417)
               ((_ to_fp 11 53) x0_ack!1420))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
