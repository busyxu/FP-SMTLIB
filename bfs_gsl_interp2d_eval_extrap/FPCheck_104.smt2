(declare-fun x1_ack!1097 () (_ BitVec 64))
(declare-fun x0_ack!1101 () (_ BitVec 64))
(declare-fun y0_ack!1098 () (_ BitVec 64))
(declare-fun x_ack!1099 () (_ BitVec 64))
(declare-fun y_ack!1100 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1101) ((_ to_fp 11 53) x1_ack!1097))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1098) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1099) ((_ to_fp 11 53) x0_ack!1101))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1099) ((_ to_fp 11 53) x1_ack!1097)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1100) ((_ to_fp 11 53) y0_ack!1098))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1100) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1097)
                       ((_ to_fp 11 53) x0_ack!1101))
               ((_ to_fp 11 53) x0_ack!1101))
       ((_ to_fp 11 53) x1_ack!1097)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1097)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1097)
                       ((_ to_fp 11 53) x0_ack!1101)))
       ((_ to_fp 11 53) x0_ack!1101)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1099)
          ((_ to_fp 11 53) x0_ack!1101))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1097)
          ((_ to_fp 11 53) x0_ack!1101))))

(check-sat)
(exit)
