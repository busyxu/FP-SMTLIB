(declare-fun x1_ack!1742 () (_ BitVec 64))
(declare-fun x0_ack!1746 () (_ BitVec 64))
(declare-fun y0_ack!1743 () (_ BitVec 64))
(declare-fun x_ack!1744 () (_ BitVec 64))
(declare-fun y_ack!1745 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1746) ((_ to_fp 11 53) x1_ack!1742))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1743) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1744) ((_ to_fp 11 53) x0_ack!1746))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1744) ((_ to_fp 11 53) x1_ack!1742)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1745) ((_ to_fp 11 53) y0_ack!1743))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1745) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1742)
                       ((_ to_fp 11 53) x0_ack!1746))
               ((_ to_fp 11 53) x0_ack!1746))
       ((_ to_fp 11 53) x1_ack!1742)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1742)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1742)
                       ((_ to_fp 11 53) x0_ack!1746)))
       ((_ to_fp 11 53) x0_ack!1746)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1745)
                       ((_ to_fp 11 53) y0_ack!1743))
               ((_ to_fp 11 53) y0_ack!1743))
       ((_ to_fp 11 53) y_ack!1745)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1745)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1745)
                       ((_ to_fp 11 53) y0_ack!1743)))
       ((_ to_fp 11 53) y0_ack!1743)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1745)
          ((_ to_fp 11 53) y0_ack!1743))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1743))))

(check-sat)
(exit)
