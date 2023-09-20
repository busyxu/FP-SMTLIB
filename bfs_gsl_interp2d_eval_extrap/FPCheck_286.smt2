(declare-fun x1_ack!2963 () (_ BitVec 64))
(declare-fun x0_ack!2967 () (_ BitVec 64))
(declare-fun y0_ack!2964 () (_ BitVec 64))
(declare-fun x_ack!2965 () (_ BitVec 64))
(declare-fun y_ack!2966 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2967) ((_ to_fp 11 53) x1_ack!2963))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2964) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2965) ((_ to_fp 11 53) x0_ack!2967))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2965) ((_ to_fp 11 53) x1_ack!2963))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2966) ((_ to_fp 11 53) y0_ack!2964))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2966) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2963)
                       ((_ to_fp 11 53) x0_ack!2967))
               ((_ to_fp 11 53) x0_ack!2967))
       ((_ to_fp 11 53) x1_ack!2963)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2963)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2963)
                       ((_ to_fp 11 53) x0_ack!2967)))
       ((_ to_fp 11 53) x0_ack!2967)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2964))
               ((_ to_fp 11 53) y0_ack!2964))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2964)))
       ((_ to_fp 11 53) y0_ack!2964)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2965)
                                   ((_ to_fp 11 53) x0_ack!2967))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2963)
                                   ((_ to_fp 11 53) x0_ack!2967))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2966)
                    ((_ to_fp 11 53) y0_ack!2964))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2964))))))

(check-sat)
(exit)
