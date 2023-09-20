(declare-fun x1_ack!1467 () (_ BitVec 64))
(declare-fun x0_ack!1473 () (_ BitVec 64))
(declare-fun x2_ack!1468 () (_ BitVec 64))
(declare-fun b_ack!1472 () (_ BitVec 64))
(declare-fun a_ack!1471 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1469 () (_ BitVec 64))
(declare-fun y1_ack!1470 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1473) ((_ to_fp 11 53) x1_ack!1467)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1467) ((_ to_fp 11 53) x2_ack!1468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1467)
                       ((_ to_fp 11 53) x0_ack!1473))
               ((_ to_fp 11 53) x0_ack!1473))
       ((_ to_fp 11 53) x1_ack!1467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1467)
                       ((_ to_fp 11 53) x0_ack!1473)))
       ((_ to_fp 11 53) x0_ack!1473)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1468)
                       ((_ to_fp 11 53) x1_ack!1467))
               ((_ to_fp 11 53) x1_ack!1467))
       ((_ to_fp 11 53) x2_ack!1468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1468)
                       ((_ to_fp 11 53) x1_ack!1467)))
       ((_ to_fp 11 53) x1_ack!1467)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1467)
                    ((_ to_fp 11 53) x0_ack!1473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1468)
                    ((_ to_fp 11 53) x1_ack!1467))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1471) ((_ to_fp 11 53) b_ack!1472))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1471) ((_ to_fp 11 53) x0_ack!1473))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1472) ((_ to_fp 11 53) x2_ack!1468))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1471) ((_ to_fp 11 53) b_ack!1472))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1471) ((_ to_fp 11 53) x0_ack!1473))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1471) ((_ to_fp 11 53) x1_ack!1467))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1472) ((_ to_fp 11 53) x0_ack!1473))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1472) ((_ to_fp 11 53) x1_ack!1467))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1467)
                    ((_ to_fp 11 53) x0_ack!1473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1470)
          ((_ to_fp 11 53) y0_ack!1469))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1467)
          ((_ to_fp 11 53) x0_ack!1473))))

(check-sat)
(exit)
