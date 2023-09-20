(declare-fun x1_ack!1777 () (_ BitVec 64))
(declare-fun x0_ack!1781 () (_ BitVec 64))
(declare-fun y0_ack!1778 () (_ BitVec 64))
(declare-fun x_ack!1779 () (_ BitVec 64))
(declare-fun y_ack!1780 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1781) ((_ to_fp 11 53) x1_ack!1777))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1778) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1779) ((_ to_fp 11 53) x0_ack!1781))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1779) ((_ to_fp 11 53) x1_ack!1777)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1780) ((_ to_fp 11 53) y0_ack!1778))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1780) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1777)
                       ((_ to_fp 11 53) x0_ack!1781))
               ((_ to_fp 11 53) x0_ack!1781))
       ((_ to_fp 11 53) x1_ack!1777)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1777)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1777)
                       ((_ to_fp 11 53) x0_ack!1781)))
       ((_ to_fp 11 53) x0_ack!1781)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1780)
                       ((_ to_fp 11 53) y0_ack!1778))
               ((_ to_fp 11 53) y0_ack!1778))
       ((_ to_fp 11 53) y_ack!1780)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1780)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1780)
                       ((_ to_fp 11 53) y0_ack!1778)))
       ((_ to_fp 11 53) y0_ack!1778)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1779)
                  ((_ to_fp 11 53) x0_ack!1781))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1777)
                  ((_ to_fp 11 53) x0_ack!1781)))))

(check-sat)
(exit)
