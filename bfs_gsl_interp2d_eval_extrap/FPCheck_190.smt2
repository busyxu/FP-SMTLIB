(declare-fun x1_ack!1908 () (_ BitVec 64))
(declare-fun x0_ack!1912 () (_ BitVec 64))
(declare-fun y0_ack!1909 () (_ BitVec 64))
(declare-fun x_ack!1910 () (_ BitVec 64))
(declare-fun y_ack!1911 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1912) ((_ to_fp 11 53) x1_ack!1908))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1909) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1910) ((_ to_fp 11 53) x0_ack!1912))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1910) ((_ to_fp 11 53) x1_ack!1908)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1911) ((_ to_fp 11 53) y0_ack!1909))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1911) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1908)
                       ((_ to_fp 11 53) x0_ack!1912))
               ((_ to_fp 11 53) x0_ack!1912))
       ((_ to_fp 11 53) x1_ack!1908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1908)
                       ((_ to_fp 11 53) x0_ack!1912)))
       ((_ to_fp 11 53) x0_ack!1912)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1911)
                       ((_ to_fp 11 53) y0_ack!1909))
               ((_ to_fp 11 53) y0_ack!1909))
       ((_ to_fp 11 53) y_ack!1911)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1911)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1911)
                       ((_ to_fp 11 53) y0_ack!1909)))
       ((_ to_fp 11 53) y0_ack!1909)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1911)
                                   ((_ to_fp 11 53) y0_ack!1909))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1909))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1910)
                    ((_ to_fp 11 53) x0_ack!1912))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1908)
                    ((_ to_fp 11 53) x0_ack!1912)))
    a!1)))

(check-sat)
(exit)
