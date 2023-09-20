(declare-fun x1_ack!1476 () (_ BitVec 64))
(declare-fun x0_ack!1479 () (_ BitVec 64))
(declare-fun x2_ack!1477 () (_ BitVec 64))
(declare-fun xx_ack!1478 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1479) ((_ to_fp 11 53) x1_ack!1476)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1476) ((_ to_fp 11 53) x2_ack!1477)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1476)
                       ((_ to_fp 11 53) x0_ack!1479))
               ((_ to_fp 11 53) x0_ack!1479))
       ((_ to_fp 11 53) x1_ack!1476)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1476)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1476)
                       ((_ to_fp 11 53) x0_ack!1479)))
       ((_ to_fp 11 53) x0_ack!1479)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1477)
                       ((_ to_fp 11 53) x1_ack!1476))
               ((_ to_fp 11 53) x1_ack!1476))
       ((_ to_fp 11 53) x2_ack!1477)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1477)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1477)
                       ((_ to_fp 11 53) x1_ack!1476)))
       ((_ to_fp 11 53) x1_ack!1476)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1476)
                    ((_ to_fp 11 53) x0_ack!1479))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1477)
                    ((_ to_fp 11 53) x1_ack!1476))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1478) ((_ to_fp 11 53) x0_ack!1479))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1478) ((_ to_fp 11 53) x2_ack!1477))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1478) ((_ to_fp 11 53) x0_ack!1479))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1478) ((_ to_fp 11 53) x1_ack!1476))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1476)
               ((_ to_fp 11 53) x0_ack!1479))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
