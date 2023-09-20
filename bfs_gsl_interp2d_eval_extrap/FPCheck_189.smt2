(declare-fun x1_ack!1903 () (_ BitVec 64))
(declare-fun x0_ack!1907 () (_ BitVec 64))
(declare-fun y0_ack!1904 () (_ BitVec 64))
(declare-fun x_ack!1905 () (_ BitVec 64))
(declare-fun y_ack!1906 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1907) ((_ to_fp 11 53) x1_ack!1903))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1904) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1905) ((_ to_fp 11 53) x0_ack!1907))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1905) ((_ to_fp 11 53) x1_ack!1903)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1906) ((_ to_fp 11 53) y0_ack!1904))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1906) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1903)
                       ((_ to_fp 11 53) x0_ack!1907))
               ((_ to_fp 11 53) x0_ack!1907))
       ((_ to_fp 11 53) x1_ack!1903)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1903)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1903)
                       ((_ to_fp 11 53) x0_ack!1907)))
       ((_ to_fp 11 53) x0_ack!1907)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1906)
                       ((_ to_fp 11 53) y0_ack!1904))
               ((_ to_fp 11 53) y0_ack!1904))
       ((_ to_fp 11 53) y_ack!1906)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1906)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1906)
                       ((_ to_fp 11 53) y0_ack!1904)))
       ((_ to_fp 11 53) y0_ack!1904)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!1906)
                  ((_ to_fp 11 53) y0_ack!1904))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!1904)))))

(check-sat)
(exit)
