(declare-fun x1_ack!1087 () (_ BitVec 64))
(declare-fun x0_ack!1091 () (_ BitVec 64))
(declare-fun y0_ack!1088 () (_ BitVec 64))
(declare-fun x_ack!1089 () (_ BitVec 64))
(declare-fun y_ack!1090 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1091) ((_ to_fp 11 53) x1_ack!1087))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1088) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1089) ((_ to_fp 11 53) x0_ack!1091))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1089) ((_ to_fp 11 53) x1_ack!1087)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1090) ((_ to_fp 11 53) y0_ack!1088))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1090) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1087)
                       ((_ to_fp 11 53) x0_ack!1091))
               ((_ to_fp 11 53) x0_ack!1091))
       ((_ to_fp 11 53) x1_ack!1087)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1087)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1087)
                       ((_ to_fp 11 53) x0_ack!1091)))
       ((_ to_fp 11 53) x0_ack!1091)))

(check-sat)
(exit)
