(declare-fun x1_ack!1132 () (_ BitVec 64))
(declare-fun x0_ack!1136 () (_ BitVec 64))
(declare-fun y0_ack!1133 () (_ BitVec 64))
(declare-fun x_ack!1134 () (_ BitVec 64))
(declare-fun y_ack!1135 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1136) ((_ to_fp 11 53) x1_ack!1132))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1133) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1134) ((_ to_fp 11 53) x0_ack!1136))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1134) ((_ to_fp 11 53) x1_ack!1132)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1135) ((_ to_fp 11 53) y0_ack!1133))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1135) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1132)
                       ((_ to_fp 11 53) x0_ack!1136))
               ((_ to_fp 11 53) x0_ack!1136))
       ((_ to_fp 11 53) x1_ack!1132)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1132)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1132)
                       ((_ to_fp 11 53) x0_ack!1136)))
       ((_ to_fp 11 53) x0_ack!1136)))

(check-sat)
(exit)
