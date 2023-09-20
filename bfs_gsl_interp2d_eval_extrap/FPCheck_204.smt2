(declare-fun x1_ack!2069 () (_ BitVec 64))
(declare-fun x0_ack!2073 () (_ BitVec 64))
(declare-fun y0_ack!2070 () (_ BitVec 64))
(declare-fun x_ack!2071 () (_ BitVec 64))
(declare-fun y_ack!2072 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2073) ((_ to_fp 11 53) x1_ack!2069))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2070) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2071) ((_ to_fp 11 53) x0_ack!2073))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2071) ((_ to_fp 11 53) x1_ack!2069)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2072) ((_ to_fp 11 53) y0_ack!2070))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2072) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2069)
                       ((_ to_fp 11 53) x0_ack!2073))
               ((_ to_fp 11 53) x0_ack!2073))
       ((_ to_fp 11 53) x1_ack!2069)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2069)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2069)
                       ((_ to_fp 11 53) x0_ack!2073)))
       ((_ to_fp 11 53) x0_ack!2073)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2072)
                       ((_ to_fp 11 53) y0_ack!2070))
               ((_ to_fp 11 53) y0_ack!2070))
       ((_ to_fp 11 53) y_ack!2072)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2072)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2072)
                       ((_ to_fp 11 53) y0_ack!2070)))
       ((_ to_fp 11 53) y0_ack!2070)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2071)
                                   ((_ to_fp 11 53) x0_ack!2073))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2069)
                                   ((_ to_fp 11 53) x0_ack!2073))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2072)
                    ((_ to_fp 11 53) y0_ack!2070))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2070))))))

(check-sat)
(exit)
