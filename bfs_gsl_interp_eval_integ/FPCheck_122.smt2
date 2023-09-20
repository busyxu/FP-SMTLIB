(declare-fun x1_ack!1373 () (_ BitVec 64))
(declare-fun x0_ack!1379 () (_ BitVec 64))
(declare-fun x2_ack!1374 () (_ BitVec 64))
(declare-fun b_ack!1378 () (_ BitVec 64))
(declare-fun a_ack!1377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1375 () (_ BitVec 64))
(declare-fun y2_ack!1376 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1379) ((_ to_fp 11 53) x1_ack!1373)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1373) ((_ to_fp 11 53) x2_ack!1374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1373)
                       ((_ to_fp 11 53) x0_ack!1379))
               ((_ to_fp 11 53) x0_ack!1379))
       ((_ to_fp 11 53) x1_ack!1373)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1373)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1373)
                       ((_ to_fp 11 53) x0_ack!1379)))
       ((_ to_fp 11 53) x0_ack!1379)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1374)
                       ((_ to_fp 11 53) x1_ack!1373))
               ((_ to_fp 11 53) x1_ack!1373))
       ((_ to_fp 11 53) x2_ack!1374)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1374)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1374)
                       ((_ to_fp 11 53) x1_ack!1373)))
       ((_ to_fp 11 53) x1_ack!1373)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1373)
                    ((_ to_fp 11 53) x0_ack!1379))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1374)
                    ((_ to_fp 11 53) x1_ack!1373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1377) ((_ to_fp 11 53) b_ack!1378))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1377) ((_ to_fp 11 53) x0_ack!1379))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1378) ((_ to_fp 11 53) x2_ack!1374))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1377) ((_ to_fp 11 53) b_ack!1378))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1377) ((_ to_fp 11 53) x0_ack!1379))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1377) ((_ to_fp 11 53) x1_ack!1373)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1373) ((_ to_fp 11 53) a_ack!1377))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1378) ((_ to_fp 11 53) x1_ack!1373))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1378) ((_ to_fp 11 53) x2_ack!1374)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1374)
                    ((_ to_fp 11 53) x1_ack!1373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1376)
          ((_ to_fp 11 53) y1_ack!1375))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1374)
          ((_ to_fp 11 53) x1_ack!1373))))

(check-sat)
(exit)
