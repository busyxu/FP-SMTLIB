(declare-fun x1_ack!1757 () (_ BitVec 64))
(declare-fun x0_ack!1761 () (_ BitVec 64))
(declare-fun y0_ack!1758 () (_ BitVec 64))
(declare-fun x_ack!1759 () (_ BitVec 64))
(declare-fun y_ack!1760 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1761) ((_ to_fp 11 53) x1_ack!1757))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1758) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1759) ((_ to_fp 11 53) x0_ack!1761))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1759) ((_ to_fp 11 53) x1_ack!1757)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1760) ((_ to_fp 11 53) y0_ack!1758))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1760) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1757)
                       ((_ to_fp 11 53) x0_ack!1761))
               ((_ to_fp 11 53) x0_ack!1761))
       ((_ to_fp 11 53) x1_ack!1757)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1757)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1757)
                       ((_ to_fp 11 53) x0_ack!1761)))
       ((_ to_fp 11 53) x0_ack!1761)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1760)
                       ((_ to_fp 11 53) y0_ack!1758))
               ((_ to_fp 11 53) y0_ack!1758))
       ((_ to_fp 11 53) y_ack!1760)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1760)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1760)
                       ((_ to_fp 11 53) y0_ack!1758)))
       ((_ to_fp 11 53) y0_ack!1758)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1759)
                  ((_ to_fp 11 53) x0_ack!1761))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1757)
                  ((_ to_fp 11 53) x0_ack!1761)))))

(check-sat)
(exit)
