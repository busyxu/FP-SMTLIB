(declare-fun x1_ack!2973 () (_ BitVec 64))
(declare-fun x0_ack!2977 () (_ BitVec 64))
(declare-fun y0_ack!2974 () (_ BitVec 64))
(declare-fun x_ack!2975 () (_ BitVec 64))
(declare-fun y_ack!2976 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2977) ((_ to_fp 11 53) x1_ack!2973))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2974) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2975) ((_ to_fp 11 53) x0_ack!2977))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2975) ((_ to_fp 11 53) x1_ack!2973))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2976) ((_ to_fp 11 53) y0_ack!2974))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2976) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2973)
                       ((_ to_fp 11 53) x0_ack!2977))
               ((_ to_fp 11 53) x0_ack!2977))
       ((_ to_fp 11 53) x1_ack!2973)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2973)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2973)
                       ((_ to_fp 11 53) x0_ack!2977)))
       ((_ to_fp 11 53) x0_ack!2977)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2974))
               ((_ to_fp 11 53) y0_ack!2974))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2974)))
       ((_ to_fp 11 53) y0_ack!2974)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2975)
                                   ((_ to_fp 11 53) x0_ack!2977))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2973)
                                   ((_ to_fp 11 53) x0_ack!2977))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2976)
                    ((_ to_fp 11 53) y0_ack!2974))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2974))))))

(check-sat)
(exit)
