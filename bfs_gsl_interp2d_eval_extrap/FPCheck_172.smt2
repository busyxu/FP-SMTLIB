(declare-fun x1_ack!1732 () (_ BitVec 64))
(declare-fun x0_ack!1736 () (_ BitVec 64))
(declare-fun y0_ack!1733 () (_ BitVec 64))
(declare-fun x_ack!1734 () (_ BitVec 64))
(declare-fun y_ack!1735 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1736) ((_ to_fp 11 53) x1_ack!1732))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1733) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1734) ((_ to_fp 11 53) x0_ack!1736))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1734) ((_ to_fp 11 53) x1_ack!1732)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1735) ((_ to_fp 11 53) y0_ack!1733))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1735) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1732)
                       ((_ to_fp 11 53) x0_ack!1736))
               ((_ to_fp 11 53) x0_ack!1736))
       ((_ to_fp 11 53) x1_ack!1732)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1732)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1732)
                       ((_ to_fp 11 53) x0_ack!1736)))
       ((_ to_fp 11 53) x0_ack!1736)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1735)
                       ((_ to_fp 11 53) y0_ack!1733))
               ((_ to_fp 11 53) y0_ack!1733))
       ((_ to_fp 11 53) y_ack!1735)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1735)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1735)
                       ((_ to_fp 11 53) y0_ack!1733)))
       ((_ to_fp 11 53) y0_ack!1733)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1735)
          ((_ to_fp 11 53) y0_ack!1733))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1733))))

(check-sat)
(exit)
