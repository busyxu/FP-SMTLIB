(declare-fun x1_ack!1878 () (_ BitVec 64))
(declare-fun x0_ack!1882 () (_ BitVec 64))
(declare-fun y0_ack!1879 () (_ BitVec 64))
(declare-fun x_ack!1880 () (_ BitVec 64))
(declare-fun y_ack!1881 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1882) ((_ to_fp 11 53) x1_ack!1878))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1879) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1880) ((_ to_fp 11 53) x0_ack!1882))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1880) ((_ to_fp 11 53) x1_ack!1878)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1881) ((_ to_fp 11 53) y0_ack!1879))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1881) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1878)
                       ((_ to_fp 11 53) x0_ack!1882))
               ((_ to_fp 11 53) x0_ack!1882))
       ((_ to_fp 11 53) x1_ack!1878)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1878)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1878)
                       ((_ to_fp 11 53) x0_ack!1882)))
       ((_ to_fp 11 53) x0_ack!1882)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1881)
                       ((_ to_fp 11 53) y0_ack!1879))
               ((_ to_fp 11 53) y0_ack!1879))
       ((_ to_fp 11 53) y_ack!1881)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1881)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1881)
                       ((_ to_fp 11 53) y0_ack!1879)))
       ((_ to_fp 11 53) y0_ack!1879)))

(check-sat)
(exit)
