(declare-fun x1_ack!368 () (_ BitVec 64))
(declare-fun x0_ack!372 () (_ BitVec 64))
(declare-fun y0_ack!369 () (_ BitVec 64))
(declare-fun x_ack!370 () (_ BitVec 64))
(declare-fun y_ack!371 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!372) ((_ to_fp 11 53) x1_ack!368))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!370) ((_ to_fp 11 53) x0_ack!372))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!370) ((_ to_fp 11 53) x1_ack!368))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!371) ((_ to_fp 11 53) y0_ack!369))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!371) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!370) ((_ to_fp 11 53) x0_ack!372))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!370) ((_ to_fp 11 53) x1_ack!368))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!371) ((_ to_fp 11 53) y0_ack!369))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!371) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!368)
                       ((_ to_fp 11 53) x0_ack!372))
               ((_ to_fp 11 53) x0_ack!372))
       ((_ to_fp 11 53) x1_ack!368)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!368)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!368)
                       ((_ to_fp 11 53) x0_ack!372)))
       ((_ to_fp 11 53) x0_ack!372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!369))
               ((_ to_fp 11 53) y0_ack!369))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!369)))
       ((_ to_fp 11 53) y0_ack!369)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!371)
                                   ((_ to_fp 11 53) y0_ack!369))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!369))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!370)
                    ((_ to_fp 11 53) x0_ack!372))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!368)
                    ((_ to_fp 11 53) x0_ack!372)))
    a!1)))

(check-sat)
(exit)
