(declare-fun x1_ack!1893 () (_ BitVec 64))
(declare-fun x0_ack!1897 () (_ BitVec 64))
(declare-fun y0_ack!1894 () (_ BitVec 64))
(declare-fun x_ack!1895 () (_ BitVec 64))
(declare-fun y_ack!1896 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1897) ((_ to_fp 11 53) x1_ack!1893))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1895) ((_ to_fp 11 53) x0_ack!1897))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1895) ((_ to_fp 11 53) x1_ack!1893)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1896) ((_ to_fp 11 53) y0_ack!1894))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1896) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1893)
                       ((_ to_fp 11 53) x0_ack!1897))
               ((_ to_fp 11 53) x0_ack!1897))
       ((_ to_fp 11 53) x1_ack!1893)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1893)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1893)
                       ((_ to_fp 11 53) x0_ack!1897)))
       ((_ to_fp 11 53) x0_ack!1897)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1896)
                       ((_ to_fp 11 53) y0_ack!1894))
               ((_ to_fp 11 53) y0_ack!1894))
       ((_ to_fp 11 53) y_ack!1896)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1896)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1896)
                       ((_ to_fp 11 53) y0_ack!1894)))
       ((_ to_fp 11 53) y0_ack!1894)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!1896)
                  ((_ to_fp 11 53) y0_ack!1894))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!1894)))))

(check-sat)
(exit)
