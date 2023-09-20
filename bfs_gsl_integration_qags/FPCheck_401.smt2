(declare-fun limit_ack!3235 () (_ BitVec 64))
(declare-fun epsabs_ack!3234 () (_ BitVec 64))
(declare-fun b_ack!3233 () (_ BitVec 64))
(declare-fun a_ack!3236 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3235)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3234)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3236)
                                   ((_ to_fp 11 53) b_ack!3233))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3233)
                  ((_ to_fp 11 53) a_ack!3236)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
