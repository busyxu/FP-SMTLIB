(declare-fun a_ack!1009 () (_ BitVec 64))
(declare-fun b_ack!1008 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1009) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1008)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1009) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1008)))
(assert (not (bvule b_ack!1008 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1008)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1009))))
(assert (not (bvule b_ack!1008 #x00000014)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1008)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!1009)))))
(assert (not (bvult b_ack!1008 #x00000001)))
(assert (not (bvult (concat #x00000000 b_ack!1008) #x0000000000000065)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1008))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                         a!1)
                 ((_ to_fp 11 53) #x3ff2d97c7f3321d2))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1008))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1008))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff2d97c7f3321d2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1008))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!1)))

(check-sat)
(exit)
