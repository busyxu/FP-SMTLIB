(declare-fun x1_ack!1453 () (_ BitVec 64))
(declare-fun x0_ack!1459 () (_ BitVec 64))
(declare-fun x2_ack!1454 () (_ BitVec 64))
(declare-fun b_ack!1458 () (_ BitVec 64))
(declare-fun a_ack!1457 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1455 () (_ BitVec 64))
(declare-fun y1_ack!1456 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1459) ((_ to_fp 11 53) x1_ack!1453)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1453) ((_ to_fp 11 53) x2_ack!1454)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1453)
                       ((_ to_fp 11 53) x0_ack!1459))
               ((_ to_fp 11 53) x0_ack!1459))
       ((_ to_fp 11 53) x1_ack!1453)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1453)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1453)
                       ((_ to_fp 11 53) x0_ack!1459)))
       ((_ to_fp 11 53) x0_ack!1459)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1454)
                       ((_ to_fp 11 53) x1_ack!1453))
               ((_ to_fp 11 53) x1_ack!1453))
       ((_ to_fp 11 53) x2_ack!1454)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1454)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1454)
                       ((_ to_fp 11 53) x1_ack!1453)))
       ((_ to_fp 11 53) x1_ack!1453)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1453)
                    ((_ to_fp 11 53) x0_ack!1459))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1454)
                    ((_ to_fp 11 53) x1_ack!1453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1457) ((_ to_fp 11 53) b_ack!1458))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1457) ((_ to_fp 11 53) x0_ack!1459))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1458) ((_ to_fp 11 53) x2_ack!1454))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1457) ((_ to_fp 11 53) b_ack!1458))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1457) ((_ to_fp 11 53) x0_ack!1459))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1457) ((_ to_fp 11 53) x1_ack!1453))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1458) ((_ to_fp 11 53) x0_ack!1459))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1458) ((_ to_fp 11 53) x1_ack!1453))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1453)
                    ((_ to_fp 11 53) x0_ack!1459))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1456)
          ((_ to_fp 11 53) y0_ack!1455))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1453)
          ((_ to_fp 11 53) x0_ack!1459))))

(check-sat)
(exit)
