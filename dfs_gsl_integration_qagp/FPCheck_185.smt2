(declare-fun limit_ack!3194 () (_ BitVec 64))
(declare-fun epsabs_ack!3199 () (_ BitVec 64))
(declare-fun epsrel_ack!3193 () (_ BitVec 64))
(declare-fun a_ack!3200 () (_ BitVec 64))
(declare-fun x1_ack!3195 () (_ BitVec 64))
(declare-fun x2_ack!3196 () (_ BitVec 64))
(declare-fun x3_ack!3197 () (_ BitVec 64))
(declare-fun b_ack!3198 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3194)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3199) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3193)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3193)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3195) ((_ to_fp 11 53) a_ack!3200))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3196) ((_ to_fp 11 53) x1_ack!3195))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3197) ((_ to_fp 11 53) x2_ack!3196))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3198) ((_ to_fp 11 53) x3_ack!3197))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3200)
                                   ((_ to_fp 11 53) x1_ack!3195))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3195)
                                   ((_ to_fp 11 53) a_ack!3200)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3200)
                    ((_ to_fp 11 53) x1_ack!3195)))
    a!1)))

(check-sat)
(exit)
