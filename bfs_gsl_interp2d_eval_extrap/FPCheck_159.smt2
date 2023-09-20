(declare-fun x1_ack!1612 () (_ BitVec 64))
(declare-fun x0_ack!1616 () (_ BitVec 64))
(declare-fun y0_ack!1613 () (_ BitVec 64))
(declare-fun x_ack!1614 () (_ BitVec 64))
(declare-fun y_ack!1615 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1616) ((_ to_fp 11 53) x1_ack!1612))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1613) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1614) ((_ to_fp 11 53) x0_ack!1616)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1615) ((_ to_fp 11 53) y0_ack!1613))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1615) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1612)
                       ((_ to_fp 11 53) x0_ack!1616))
               ((_ to_fp 11 53) x0_ack!1616))
       ((_ to_fp 11 53) x1_ack!1612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1612)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1612)
                       ((_ to_fp 11 53) x0_ack!1616)))
       ((_ to_fp 11 53) x0_ack!1616)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1615)
          ((_ to_fp 11 53) y0_ack!1613))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1613))))

(check-sat)
(exit)
