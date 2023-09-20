(declare-fun x1_ack!1722 () (_ BitVec 64))
(declare-fun x0_ack!1726 () (_ BitVec 64))
(declare-fun y0_ack!1723 () (_ BitVec 64))
(declare-fun x_ack!1724 () (_ BitVec 64))
(declare-fun y_ack!1725 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1726) ((_ to_fp 11 53) x1_ack!1722))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1723) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1724) ((_ to_fp 11 53) x0_ack!1726))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1724) ((_ to_fp 11 53) x1_ack!1722)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1725) ((_ to_fp 11 53) y0_ack!1723))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1725) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1726))
               ((_ to_fp 11 53) x0_ack!1726))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1726)))
       ((_ to_fp 11 53) x0_ack!1726)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1725)
                       ((_ to_fp 11 53) y0_ack!1723))
               ((_ to_fp 11 53) y0_ack!1723))
       ((_ to_fp 11 53) y_ack!1725)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1725)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1725)
                       ((_ to_fp 11 53) y0_ack!1723)))
       ((_ to_fp 11 53) y0_ack!1723)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1725)
          ((_ to_fp 11 53) y0_ack!1723))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1723))))

(check-sat)
(exit)
