(declare-fun x1_ack!2953 () (_ BitVec 64))
(declare-fun x0_ack!2957 () (_ BitVec 64))
(declare-fun y0_ack!2954 () (_ BitVec 64))
(declare-fun x_ack!2955 () (_ BitVec 64))
(declare-fun y_ack!2956 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2957) ((_ to_fp 11 53) x1_ack!2953))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2954) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2955) ((_ to_fp 11 53) x0_ack!2957))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2955) ((_ to_fp 11 53) x1_ack!2953))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2956) ((_ to_fp 11 53) y0_ack!2954))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2956) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2953)
                       ((_ to_fp 11 53) x0_ack!2957))
               ((_ to_fp 11 53) x0_ack!2957))
       ((_ to_fp 11 53) x1_ack!2953)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2953)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2953)
                       ((_ to_fp 11 53) x0_ack!2957)))
       ((_ to_fp 11 53) x0_ack!2957)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2954))
               ((_ to_fp 11 53) y0_ack!2954))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2954)))
       ((_ to_fp 11 53) y0_ack!2954)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2955)
                                   ((_ to_fp 11 53) x0_ack!2957))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2953)
                                   ((_ to_fp 11 53) x0_ack!2957))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!2956)
                    ((_ to_fp 11 53) y0_ack!2954))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!2954))))))

(check-sat)
(exit)
