(declare-fun x1_ack!1547 () (_ BitVec 64))
(declare-fun x0_ack!1551 () (_ BitVec 64))
(declare-fun y0_ack!1548 () (_ BitVec 64))
(declare-fun x_ack!1549 () (_ BitVec 64))
(declare-fun y_ack!1550 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1551) ((_ to_fp 11 53) x1_ack!1547))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1548) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1549) ((_ to_fp 11 53) x0_ack!1551)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1550) ((_ to_fp 11 53) y0_ack!1548))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1550) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1547)
                       ((_ to_fp 11 53) x0_ack!1551))
               ((_ to_fp 11 53) x0_ack!1551))
       ((_ to_fp 11 53) x1_ack!1547)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1547)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1547)
                       ((_ to_fp 11 53) x0_ack!1551)))
       ((_ to_fp 11 53) x0_ack!1551)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1549)
          ((_ to_fp 11 53) x0_ack!1551))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1547)
          ((_ to_fp 11 53) x0_ack!1551))))

(check-sat)
(exit)
