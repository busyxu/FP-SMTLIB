(declare-fun x1_ack!2049 () (_ BitVec 64))
(declare-fun x0_ack!2053 () (_ BitVec 64))
(declare-fun y0_ack!2050 () (_ BitVec 64))
(declare-fun x_ack!2051 () (_ BitVec 64))
(declare-fun y_ack!2052 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2053) ((_ to_fp 11 53) x1_ack!2049))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2051) ((_ to_fp 11 53) x0_ack!2053))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2051) ((_ to_fp 11 53) x1_ack!2049)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2052) ((_ to_fp 11 53) y0_ack!2050))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2052) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2049)
                       ((_ to_fp 11 53) x0_ack!2053))
               ((_ to_fp 11 53) x0_ack!2053))
       ((_ to_fp 11 53) x1_ack!2049)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2049)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2049)
                       ((_ to_fp 11 53) x0_ack!2053)))
       ((_ to_fp 11 53) x0_ack!2053)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2052)
                       ((_ to_fp 11 53) y0_ack!2050))
               ((_ to_fp 11 53) y0_ack!2050))
       ((_ to_fp 11 53) y_ack!2052)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2052)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2052)
                       ((_ to_fp 11 53) y0_ack!2050)))
       ((_ to_fp 11 53) y0_ack!2050)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2051)
                                   ((_ to_fp 11 53) x0_ack!2053))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2049)
                                   ((_ to_fp 11 53) x0_ack!2053))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2052)
                    ((_ to_fp 11 53) y0_ack!2050))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2050))))))

(check-sat)
(exit)
