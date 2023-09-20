(declare-fun limit_ack!3026 () (_ BitVec 64))
(declare-fun epsabs_ack!3031 () (_ BitVec 64))
(declare-fun epsrel_ack!3025 () (_ BitVec 64))
(declare-fun a_ack!3032 () (_ BitVec 64))
(declare-fun x1_ack!3027 () (_ BitVec 64))
(declare-fun x2_ack!3028 () (_ BitVec 64))
(declare-fun x3_ack!3029 () (_ BitVec 64))
(declare-fun b_ack!3030 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3026)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3031) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3025)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3025)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3027) ((_ to_fp 11 53) a_ack!3032))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3028) ((_ to_fp 11 53) x1_ack!3027))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3029) ((_ to_fp 11 53) x2_ack!3028))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3030) ((_ to_fp 11 53) x3_ack!3029))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3032)
                                   ((_ to_fp 11 53) x1_ack!3027))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3027)
                                   ((_ to_fp 11 53) a_ack!3032)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3032)
                                   ((_ to_fp 11 53) x1_ack!3027)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
