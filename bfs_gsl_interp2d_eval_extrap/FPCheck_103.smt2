(declare-fun x1_ack!1092 () (_ BitVec 64))
(declare-fun x0_ack!1096 () (_ BitVec 64))
(declare-fun y0_ack!1093 () (_ BitVec 64))
(declare-fun x_ack!1094 () (_ BitVec 64))
(declare-fun y_ack!1095 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1096) ((_ to_fp 11 53) x1_ack!1092))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1093) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1094) ((_ to_fp 11 53) x0_ack!1096))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1094) ((_ to_fp 11 53) x1_ack!1092)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1095) ((_ to_fp 11 53) y0_ack!1093))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1095) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1096))
               ((_ to_fp 11 53) x0_ack!1096))
       ((_ to_fp 11 53) x1_ack!1092)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1092)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1092)
                       ((_ to_fp 11 53) x0_ack!1096)))
       ((_ to_fp 11 53) x0_ack!1096)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1094)
          ((_ to_fp 11 53) x0_ack!1096))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1092)
          ((_ to_fp 11 53) x0_ack!1096))))

(check-sat)
(exit)
