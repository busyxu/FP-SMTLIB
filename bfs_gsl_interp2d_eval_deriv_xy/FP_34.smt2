(declare-fun x1_ack!1101 () (_ BitVec 64))
(declare-fun x0_ack!1105 () (_ BitVec 64))
(declare-fun y0_ack!1102 () (_ BitVec 64))
(declare-fun x_ack!1103 () (_ BitVec 64))
(declare-fun y_ack!1104 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1105) ((_ to_fp 11 53) x1_ack!1101))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1102) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1103) ((_ to_fp 11 53) x0_ack!1105))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1103) ((_ to_fp 11 53) x1_ack!1101))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1104) ((_ to_fp 11 53) y0_ack!1102))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1104) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1103) ((_ to_fp 11 53) x0_ack!1105))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1103) ((_ to_fp 11 53) x1_ack!1101)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1104) ((_ to_fp 11 53) y0_ack!1102))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1104) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1101)
                       ((_ to_fp 11 53) x0_ack!1105))
               ((_ to_fp 11 53) x0_ack!1105))
       ((_ to_fp 11 53) x1_ack!1101)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1101)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1101)
                       ((_ to_fp 11 53) x0_ack!1105)))
       ((_ to_fp 11 53) x0_ack!1105)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1102))
               ((_ to_fp 11 53) y0_ack!1102))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1102)))
       ((_ to_fp 11 53) y0_ack!1102)))

(check-sat)
(exit)
