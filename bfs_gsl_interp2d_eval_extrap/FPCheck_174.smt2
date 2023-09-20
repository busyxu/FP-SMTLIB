(declare-fun x1_ack!1747 () (_ BitVec 64))
(declare-fun x0_ack!1751 () (_ BitVec 64))
(declare-fun y0_ack!1748 () (_ BitVec 64))
(declare-fun x_ack!1749 () (_ BitVec 64))
(declare-fun y_ack!1750 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1751) ((_ to_fp 11 53) x1_ack!1747))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1748) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1749) ((_ to_fp 11 53) x0_ack!1751))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1749) ((_ to_fp 11 53) x1_ack!1747)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1750) ((_ to_fp 11 53) y0_ack!1748))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1750) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1747)
                       ((_ to_fp 11 53) x0_ack!1751))
               ((_ to_fp 11 53) x0_ack!1751))
       ((_ to_fp 11 53) x1_ack!1747)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1747)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1747)
                       ((_ to_fp 11 53) x0_ack!1751)))
       ((_ to_fp 11 53) x0_ack!1751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1750)
                       ((_ to_fp 11 53) y0_ack!1748))
               ((_ to_fp 11 53) y0_ack!1748))
       ((_ to_fp 11 53) y_ack!1750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1750)
                       ((_ to_fp 11 53) y0_ack!1748)))
       ((_ to_fp 11 53) y0_ack!1748)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1750)
          ((_ to_fp 11 53) y0_ack!1748))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1748))))

(check-sat)
(exit)
