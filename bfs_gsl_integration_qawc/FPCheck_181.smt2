(declare-fun limit_ack!2356 () (_ BitVec 64))
(declare-fun a_ack!2357 () (_ BitVec 64))
(declare-fun b_ack!2353 () (_ BitVec 64))
(declare-fun epsabs_ack!2355 () (_ BitVec 64))
(declare-fun c_ack!2354 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2356)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2353) ((_ to_fp 11 53) a_ack!2357)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2355)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2354) ((_ to_fp 11 53) a_ack!2357))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2354) ((_ to_fp 11 53) b_ack!2353))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2354))
                   ((_ to_fp 11 53) a_ack!2357))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2353))
                 ((_ to_fp 11 53) b_ack!2353))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2354))
                   ((_ to_fp 11 53) a_ack!2357))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2353)))
         ((_ to_fp 11 53) b_ack!2353))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2354))
                           ((_ to_fp 11 53) a_ack!2357))
                   ((_ to_fp 11 53) b_ack!2353))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2357)
                                   ((_ to_fp 11 53) b_ack!2353))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2353)
                           ((_ to_fp 11 53) a_ack!2357)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1ef0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            a!2
            (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!2354)))
    #x3fdabfd7e03c2fa6))))

(check-sat)
(exit)
