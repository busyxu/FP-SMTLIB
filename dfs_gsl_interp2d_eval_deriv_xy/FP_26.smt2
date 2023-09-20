(declare-fun x1_ack!1049 () (_ BitVec 64))
(declare-fun x0_ack!1053 () (_ BitVec 64))
(declare-fun y0_ack!1050 () (_ BitVec 64))
(declare-fun x_ack!1051 () (_ BitVec 64))
(declare-fun y_ack!1052 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1053) ((_ to_fp 11 53) x1_ack!1049))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1051) ((_ to_fp 11 53) x0_ack!1053))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1051) ((_ to_fp 11 53) x1_ack!1049))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1052) ((_ to_fp 11 53) y0_ack!1050))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1052) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1051) ((_ to_fp 11 53) x0_ack!1053))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1051) ((_ to_fp 11 53) x1_ack!1049)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1052) ((_ to_fp 11 53) y0_ack!1050))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1052) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1049)
                       ((_ to_fp 11 53) x0_ack!1053))
               ((_ to_fp 11 53) x0_ack!1053))
       ((_ to_fp 11 53) x1_ack!1049)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1049)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1049)
                       ((_ to_fp 11 53) x0_ack!1053)))
       ((_ to_fp 11 53) x0_ack!1053)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1050))
               ((_ to_fp 11 53) y0_ack!1050))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1050)))
       ((_ to_fp 11 53) y0_ack!1050)))

(check-sat)
(exit)
