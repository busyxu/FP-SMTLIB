(declare-fun x1_ack!1057 () (_ BitVec 64))
(declare-fun x0_ack!1061 () (_ BitVec 64))
(declare-fun y0_ack!1058 () (_ BitVec 64))
(declare-fun x_ack!1059 () (_ BitVec 64))
(declare-fun y_ack!1060 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1061) ((_ to_fp 11 53) x1_ack!1057))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1058) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1059) ((_ to_fp 11 53) x0_ack!1061))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1059) ((_ to_fp 11 53) x1_ack!1057)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1060) ((_ to_fp 11 53) y0_ack!1058))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1060) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1057)
                       ((_ to_fp 11 53) x0_ack!1061))
               ((_ to_fp 11 53) x0_ack!1061))
       ((_ to_fp 11 53) x1_ack!1057)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1057)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1057)
                       ((_ to_fp 11 53) x0_ack!1061)))
       ((_ to_fp 11 53) x0_ack!1061)))

(check-sat)
(exit)
