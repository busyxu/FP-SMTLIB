(declare-fun x1_ack!1474 () (_ BitVec 64))
(declare-fun x0_ack!1480 () (_ BitVec 64))
(declare-fun x2_ack!1475 () (_ BitVec 64))
(declare-fun b_ack!1479 () (_ BitVec 64))
(declare-fun a_ack!1478 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1476 () (_ BitVec 64))
(declare-fun y1_ack!1477 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1480) ((_ to_fp 11 53) x1_ack!1474)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1474) ((_ to_fp 11 53) x2_ack!1475)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1474)
                       ((_ to_fp 11 53) x0_ack!1480))
               ((_ to_fp 11 53) x0_ack!1480))
       ((_ to_fp 11 53) x1_ack!1474)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1474)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1474)
                       ((_ to_fp 11 53) x0_ack!1480)))
       ((_ to_fp 11 53) x0_ack!1480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1475)
                       ((_ to_fp 11 53) x1_ack!1474))
               ((_ to_fp 11 53) x1_ack!1474))
       ((_ to_fp 11 53) x2_ack!1475)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1475)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1475)
                       ((_ to_fp 11 53) x1_ack!1474)))
       ((_ to_fp 11 53) x1_ack!1474)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1474)
                    ((_ to_fp 11 53) x0_ack!1480))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1475)
                    ((_ to_fp 11 53) x1_ack!1474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1478) ((_ to_fp 11 53) b_ack!1479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1478) ((_ to_fp 11 53) x0_ack!1480))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1479) ((_ to_fp 11 53) x2_ack!1475))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1478) ((_ to_fp 11 53) b_ack!1479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1478) ((_ to_fp 11 53) x0_ack!1480))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1478) ((_ to_fp 11 53) x1_ack!1474))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1479) ((_ to_fp 11 53) x0_ack!1480))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1479) ((_ to_fp 11 53) x1_ack!1474))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1474)
                    ((_ to_fp 11 53) x0_ack!1480))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1477)
          ((_ to_fp 11 53) y0_ack!1476))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1474)
          ((_ to_fp 11 53) x0_ack!1480))))

(check-sat)
(exit)
