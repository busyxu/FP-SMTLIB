(declare-fun x1_ack!1327 () (_ BitVec 64))
(declare-fun x0_ack!1331 () (_ BitVec 64))
(declare-fun y0_ack!1328 () (_ BitVec 64))
(declare-fun x_ack!1329 () (_ BitVec 64))
(declare-fun y_ack!1330 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1331) ((_ to_fp 11 53) x1_ack!1327))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1328) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1329) ((_ to_fp 11 53) x0_ack!1331)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1330) ((_ to_fp 11 53) y0_ack!1328)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1327)
                       ((_ to_fp 11 53) x0_ack!1331))
               ((_ to_fp 11 53) x0_ack!1331))
       ((_ to_fp 11 53) x1_ack!1327)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1327)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1327)
                       ((_ to_fp 11 53) x0_ack!1331)))
       ((_ to_fp 11 53) x0_ack!1331)))

(check-sat)
(exit)
