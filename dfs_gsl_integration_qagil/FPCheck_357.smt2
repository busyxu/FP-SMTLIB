(declare-fun limit_ack!2307 () (_ BitVec 64))
(declare-fun epsabs_ack!2305 () (_ BitVec 64))
(declare-fun epsrel_ack!2306 () (_ BitVec 64))
(declare-fun b_ack!2308 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2307)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2305) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2306)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2306)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2308)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2308)
          ((_ to_fp 11 53) #x3ff864a06b92e6b3))))

(check-sat)
(exit)
