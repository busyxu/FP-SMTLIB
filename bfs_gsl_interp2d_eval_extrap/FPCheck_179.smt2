(declare-fun x1_ack!1792 () (_ BitVec 64))
(declare-fun x0_ack!1796 () (_ BitVec 64))
(declare-fun y0_ack!1793 () (_ BitVec 64))
(declare-fun x_ack!1794 () (_ BitVec 64))
(declare-fun y_ack!1795 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1796) ((_ to_fp 11 53) x1_ack!1792))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1793) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1794) ((_ to_fp 11 53) x0_ack!1796))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1794) ((_ to_fp 11 53) x1_ack!1792)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1795) ((_ to_fp 11 53) y0_ack!1793))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1795) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1792)
                       ((_ to_fp 11 53) x0_ack!1796))
               ((_ to_fp 11 53) x0_ack!1796))
       ((_ to_fp 11 53) x1_ack!1792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1792)
                       ((_ to_fp 11 53) x0_ack!1796)))
       ((_ to_fp 11 53) x0_ack!1796)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1795)
                       ((_ to_fp 11 53) y0_ack!1793))
               ((_ to_fp 11 53) y0_ack!1793))
       ((_ to_fp 11 53) y_ack!1795)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1795)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1795)
                       ((_ to_fp 11 53) y0_ack!1793)))
       ((_ to_fp 11 53) y0_ack!1793)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!1795)
                  ((_ to_fp 11 53) y0_ack!1793))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!1793)))))

(check-sat)
(exit)
