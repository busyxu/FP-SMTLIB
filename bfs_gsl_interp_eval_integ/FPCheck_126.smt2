(declare-fun x1_ack!1425 () (_ BitVec 64))
(declare-fun x0_ack!1431 () (_ BitVec 64))
(declare-fun x2_ack!1426 () (_ BitVec 64))
(declare-fun b_ack!1430 () (_ BitVec 64))
(declare-fun a_ack!1429 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1427 () (_ BitVec 64))
(declare-fun y1_ack!1428 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1431) ((_ to_fp 11 53) x1_ack!1425)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1425) ((_ to_fp 11 53) x2_ack!1426)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1425)
                       ((_ to_fp 11 53) x0_ack!1431))
               ((_ to_fp 11 53) x0_ack!1431))
       ((_ to_fp 11 53) x1_ack!1425)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1425)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1425)
                       ((_ to_fp 11 53) x0_ack!1431)))
       ((_ to_fp 11 53) x0_ack!1431)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1426)
                       ((_ to_fp 11 53) x1_ack!1425))
               ((_ to_fp 11 53) x1_ack!1425))
       ((_ to_fp 11 53) x2_ack!1426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1426)
                       ((_ to_fp 11 53) x1_ack!1425)))
       ((_ to_fp 11 53) x1_ack!1425)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1425)
                    ((_ to_fp 11 53) x0_ack!1431))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1426)
                    ((_ to_fp 11 53) x1_ack!1425))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1429) ((_ to_fp 11 53) b_ack!1430))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1429) ((_ to_fp 11 53) x0_ack!1431))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) x2_ack!1426))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1429) ((_ to_fp 11 53) b_ack!1430))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1429) ((_ to_fp 11 53) x0_ack!1431))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1429) ((_ to_fp 11 53) x1_ack!1425))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) x0_ack!1431))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) x1_ack!1425))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1425)
                    ((_ to_fp 11 53) x0_ack!1431))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1428)
          ((_ to_fp 11 53) y0_ack!1427))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1425)
          ((_ to_fp 11 53) x0_ack!1431))))

(check-sat)
(exit)
