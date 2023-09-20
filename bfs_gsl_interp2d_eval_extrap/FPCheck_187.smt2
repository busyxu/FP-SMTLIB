(declare-fun x1_ack!1883 () (_ BitVec 64))
(declare-fun x0_ack!1887 () (_ BitVec 64))
(declare-fun y0_ack!1884 () (_ BitVec 64))
(declare-fun x_ack!1885 () (_ BitVec 64))
(declare-fun y_ack!1886 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1887) ((_ to_fp 11 53) x1_ack!1883))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1884) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1885) ((_ to_fp 11 53) x0_ack!1887))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1885) ((_ to_fp 11 53) x1_ack!1883)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1886) ((_ to_fp 11 53) y0_ack!1884))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1886) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1883)
                       ((_ to_fp 11 53) x0_ack!1887))
               ((_ to_fp 11 53) x0_ack!1887))
       ((_ to_fp 11 53) x1_ack!1883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1883)
                       ((_ to_fp 11 53) x0_ack!1887)))
       ((_ to_fp 11 53) x0_ack!1887)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1886)
                       ((_ to_fp 11 53) y0_ack!1884))
               ((_ to_fp 11 53) y0_ack!1884))
       ((_ to_fp 11 53) y_ack!1886)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1886)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1886)
                       ((_ to_fp 11 53) y0_ack!1884)))
       ((_ to_fp 11 53) y0_ack!1884)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!1886)
                  ((_ to_fp 11 53) y0_ack!1884))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!1884)))))

(check-sat)
(exit)
