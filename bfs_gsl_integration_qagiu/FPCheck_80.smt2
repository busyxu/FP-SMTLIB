(declare-fun limit_ack!516 () (_ BitVec 64))
(declare-fun epsabs_ack!514 () (_ BitVec 64))
(declare-fun epsrel_ack!515 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!517 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!516)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!514) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!515)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!515)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!517)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW a!2 #x3fdabfd7e03c2fa6))))

(check-sat)
(exit)
