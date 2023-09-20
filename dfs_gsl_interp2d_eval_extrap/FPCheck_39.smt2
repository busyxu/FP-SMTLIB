(declare-fun x1_ack!383 () (_ BitVec 64))
(declare-fun x0_ack!387 () (_ BitVec 64))
(declare-fun y0_ack!384 () (_ BitVec 64))
(declare-fun x_ack!385 () (_ BitVec 64))
(declare-fun y_ack!386 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!387) ((_ to_fp 11 53) x1_ack!383))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!384) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!385) ((_ to_fp 11 53) x0_ack!387))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!385) ((_ to_fp 11 53) x1_ack!383))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!386) ((_ to_fp 11 53) y0_ack!384))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!386) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!383)
                       ((_ to_fp 11 53) x0_ack!387))
               ((_ to_fp 11 53) x0_ack!387))
       ((_ to_fp 11 53) x1_ack!383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!383)
                       ((_ to_fp 11 53) x0_ack!387)))
       ((_ to_fp 11 53) x0_ack!387)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!384))
               ((_ to_fp 11 53) y0_ack!384))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!384)))
       ((_ to_fp 11 53) y0_ack!384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!386)
                       ((_ to_fp 11 53) y0_ack!384))
               ((_ to_fp 11 53) y0_ack!384))
       ((_ to_fp 11 53) y_ack!386)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!386)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!386)
                       ((_ to_fp 11 53) y0_ack!384)))
       ((_ to_fp 11 53) y0_ack!384)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!386)
                                   ((_ to_fp 11 53) y0_ack!384))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!384))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!385)
                    ((_ to_fp 11 53) x0_ack!387))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!383)
                    ((_ to_fp 11 53) x0_ack!387)))
    a!1)))

(check-sat)
(exit)
