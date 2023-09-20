(declare-fun x1_ack!1187 () (_ BitVec 64))
(declare-fun x0_ack!1191 () (_ BitVec 64))
(declare-fun y0_ack!1188 () (_ BitVec 64))
(declare-fun x_ack!1189 () (_ BitVec 64))
(declare-fun y_ack!1190 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1191) ((_ to_fp 11 53) x1_ack!1187))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1189) ((_ to_fp 11 53) x0_ack!1191))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1189) ((_ to_fp 11 53) x1_ack!1187))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1190) ((_ to_fp 11 53) y0_ack!1188))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1190) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1187)
                       ((_ to_fp 11 53) x0_ack!1191))
               ((_ to_fp 11 53) x0_ack!1191))
       ((_ to_fp 11 53) x1_ack!1187)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1187)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1187)
                       ((_ to_fp 11 53) x0_ack!1191)))
       ((_ to_fp 11 53) x0_ack!1191)))

(check-sat)
(exit)
