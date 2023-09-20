(declare-fun x1_ack!2812 () (_ BitVec 64))
(declare-fun x0_ack!2816 () (_ BitVec 64))
(declare-fun y0_ack!2813 () (_ BitVec 64))
(declare-fun x_ack!2814 () (_ BitVec 64))
(declare-fun y_ack!2815 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2816) ((_ to_fp 11 53) x1_ack!2812))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2813) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2814) ((_ to_fp 11 53) x0_ack!2816))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2814) ((_ to_fp 11 53) x1_ack!2812))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2815) ((_ to_fp 11 53) y0_ack!2813))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2815) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2812)
                       ((_ to_fp 11 53) x0_ack!2816))
               ((_ to_fp 11 53) x0_ack!2816))
       ((_ to_fp 11 53) x1_ack!2812)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2812)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2812)
                       ((_ to_fp 11 53) x0_ack!2816)))
       ((_ to_fp 11 53) x0_ack!2816)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2813))
               ((_ to_fp 11 53) y0_ack!2813))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2813)))
       ((_ to_fp 11 53) y0_ack!2813)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2815)
                                   ((_ to_fp 11 53) y0_ack!2813))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2813))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!2814)
                    ((_ to_fp 11 53) x0_ack!2816))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2812)
                    ((_ to_fp 11 53) x0_ack!2816)))
    a!1)))

(check-sat)
(exit)
