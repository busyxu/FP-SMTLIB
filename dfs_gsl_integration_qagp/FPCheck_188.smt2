(declare-fun limit_ack!3250 () (_ BitVec 64))
(declare-fun epsabs_ack!3255 () (_ BitVec 64))
(declare-fun epsrel_ack!3249 () (_ BitVec 64))
(declare-fun a_ack!3256 () (_ BitVec 64))
(declare-fun x1_ack!3251 () (_ BitVec 64))
(declare-fun x2_ack!3252 () (_ BitVec 64))
(declare-fun x3_ack!3253 () (_ BitVec 64))
(declare-fun b_ack!3254 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3250)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3255) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3249)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3249)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3251) ((_ to_fp 11 53) a_ack!3256))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3252) ((_ to_fp 11 53) x1_ack!3251))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3253) ((_ to_fp 11 53) x2_ack!3252))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3254) ((_ to_fp 11 53) x3_ack!3253))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3256)
                                   ((_ to_fp 11 53) x1_ack!3251))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3251)
                                   ((_ to_fp 11 53) a_ack!3256)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3256)
                                   ((_ to_fp 11 53) x1_ack!3251)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
