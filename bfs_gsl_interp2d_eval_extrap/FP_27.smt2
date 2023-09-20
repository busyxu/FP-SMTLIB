(declare-fun x1_ack!1032 () (_ BitVec 64))
(declare-fun x0_ack!1036 () (_ BitVec 64))
(declare-fun y0_ack!1033 () (_ BitVec 64))
(declare-fun x_ack!1034 () (_ BitVec 64))
(declare-fun y_ack!1035 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1036) ((_ to_fp 11 53) x1_ack!1032))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1033) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) x0_ack!1036))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) x1_ack!1032)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1035) ((_ to_fp 11 53) y0_ack!1033))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1035) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1032)
                       ((_ to_fp 11 53) x0_ack!1036))
               ((_ to_fp 11 53) x0_ack!1036))
       ((_ to_fp 11 53) x1_ack!1032)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1032)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1032)
                       ((_ to_fp 11 53) x0_ack!1036)))
       ((_ to_fp 11 53) x0_ack!1036)))

(check-sat)
(exit)
