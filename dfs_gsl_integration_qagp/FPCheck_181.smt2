(declare-fun limit_ack!3130 () (_ BitVec 64))
(declare-fun epsabs_ack!3135 () (_ BitVec 64))
(declare-fun epsrel_ack!3129 () (_ BitVec 64))
(declare-fun a_ack!3136 () (_ BitVec 64))
(declare-fun x1_ack!3131 () (_ BitVec 64))
(declare-fun x2_ack!3132 () (_ BitVec 64))
(declare-fun x3_ack!3133 () (_ BitVec 64))
(declare-fun b_ack!3134 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3130)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3135) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3129)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3129)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3131) ((_ to_fp 11 53) a_ack!3136))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3132) ((_ to_fp 11 53) x1_ack!3131))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3133) ((_ to_fp 11 53) x2_ack!3132))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3134) ((_ to_fp 11 53) x3_ack!3133))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3136)
                                   ((_ to_fp 11 53) x1_ack!3131))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3131)
                                   ((_ to_fp 11 53) a_ack!3136)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3136)
                                   ((_ to_fp 11 53) x1_ack!3131)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
