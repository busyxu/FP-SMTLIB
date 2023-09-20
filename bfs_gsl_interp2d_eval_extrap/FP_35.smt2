(declare-fun x1_ack!1297 () (_ BitVec 64))
(declare-fun x0_ack!1301 () (_ BitVec 64))
(declare-fun y0_ack!1298 () (_ BitVec 64))
(declare-fun x_ack!1299 () (_ BitVec 64))
(declare-fun y_ack!1300 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1301) ((_ to_fp 11 53) x1_ack!1297))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1298) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1299) ((_ to_fp 11 53) x0_ack!1301))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1299) ((_ to_fp 11 53) x1_ack!1297))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1300) ((_ to_fp 11 53) y0_ack!1298))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1300) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1297)
                       ((_ to_fp 11 53) x0_ack!1301))
               ((_ to_fp 11 53) x0_ack!1301))
       ((_ to_fp 11 53) x1_ack!1297)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1297)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1297)
                       ((_ to_fp 11 53) x0_ack!1301)))
       ((_ to_fp 11 53) x0_ack!1301)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1298))
               ((_ to_fp 11 53) y0_ack!1298))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1298)))
       ((_ to_fp 11 53) y0_ack!1298)))

(check-sat)
(exit)
