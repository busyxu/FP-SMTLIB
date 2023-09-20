(declare-fun x1_ack!1928 () (_ BitVec 64))
(declare-fun x0_ack!1932 () (_ BitVec 64))
(declare-fun y0_ack!1929 () (_ BitVec 64))
(declare-fun x_ack!1930 () (_ BitVec 64))
(declare-fun y_ack!1931 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1932) ((_ to_fp 11 53) x1_ack!1928))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1929) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1930) ((_ to_fp 11 53) x0_ack!1932))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1930) ((_ to_fp 11 53) x1_ack!1928)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1931) ((_ to_fp 11 53) y0_ack!1929))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1931) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1928)
                       ((_ to_fp 11 53) x0_ack!1932))
               ((_ to_fp 11 53) x0_ack!1932))
       ((_ to_fp 11 53) x1_ack!1928)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1928)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1928)
                       ((_ to_fp 11 53) x0_ack!1932)))
       ((_ to_fp 11 53) x0_ack!1932)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1931)
                       ((_ to_fp 11 53) y0_ack!1929))
               ((_ to_fp 11 53) y0_ack!1929))
       ((_ to_fp 11 53) y_ack!1931)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1931)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1931)
                       ((_ to_fp 11 53) y0_ack!1929)))
       ((_ to_fp 11 53) y0_ack!1929)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1931)
                                   ((_ to_fp 11 53) y0_ack!1929))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1929))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1930)
                    ((_ to_fp 11 53) x0_ack!1932))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1928)
                    ((_ to_fp 11 53) x0_ack!1932)))
    a!1)))

(check-sat)
(exit)
