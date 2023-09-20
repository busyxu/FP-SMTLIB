(declare-fun x1_ack!1712 () (_ BitVec 64))
(declare-fun x0_ack!1716 () (_ BitVec 64))
(declare-fun y0_ack!1713 () (_ BitVec 64))
(declare-fun x_ack!1714 () (_ BitVec 64))
(declare-fun y_ack!1715 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1716) ((_ to_fp 11 53) x1_ack!1712))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1713) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1714) ((_ to_fp 11 53) x0_ack!1716))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1714) ((_ to_fp 11 53) x1_ack!1712)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1715) ((_ to_fp 11 53) y0_ack!1713))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1715) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1712)
                       ((_ to_fp 11 53) x0_ack!1716))
               ((_ to_fp 11 53) x0_ack!1716))
       ((_ to_fp 11 53) x1_ack!1712)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1712)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1712)
                       ((_ to_fp 11 53) x0_ack!1716)))
       ((_ to_fp 11 53) x0_ack!1716)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1715)
                       ((_ to_fp 11 53) y0_ack!1713))
               ((_ to_fp 11 53) y0_ack!1713))
       ((_ to_fp 11 53) y_ack!1715)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1715)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1715)
                       ((_ to_fp 11 53) y0_ack!1713)))
       ((_ to_fp 11 53) y0_ack!1713)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1715)
          ((_ to_fp 11 53) y0_ack!1713))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1713))))

(check-sat)
(exit)
