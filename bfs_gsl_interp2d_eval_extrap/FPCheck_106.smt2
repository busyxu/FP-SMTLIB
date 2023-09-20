(declare-fun x1_ack!1112 () (_ BitVec 64))
(declare-fun x0_ack!1116 () (_ BitVec 64))
(declare-fun y0_ack!1113 () (_ BitVec 64))
(declare-fun x_ack!1114 () (_ BitVec 64))
(declare-fun y_ack!1115 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1116) ((_ to_fp 11 53) x1_ack!1112))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1113) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1114) ((_ to_fp 11 53) x0_ack!1116))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1114) ((_ to_fp 11 53) x1_ack!1112)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1115) ((_ to_fp 11 53) y0_ack!1113))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1115) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1112)
                       ((_ to_fp 11 53) x0_ack!1116))
               ((_ to_fp 11 53) x0_ack!1116))
       ((_ to_fp 11 53) x1_ack!1112)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1112)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1112)
                       ((_ to_fp 11 53) x0_ack!1116)))
       ((_ to_fp 11 53) x0_ack!1116)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1114)
          ((_ to_fp 11 53) x0_ack!1116))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1112)
          ((_ to_fp 11 53) x0_ack!1116))))

(check-sat)
(exit)
