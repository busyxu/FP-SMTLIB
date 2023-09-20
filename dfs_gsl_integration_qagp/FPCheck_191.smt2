(declare-fun limit_ack!3314 () (_ BitVec 64))
(declare-fun epsabs_ack!3319 () (_ BitVec 64))
(declare-fun epsrel_ack!3313 () (_ BitVec 64))
(declare-fun a_ack!3320 () (_ BitVec 64))
(declare-fun x1_ack!3315 () (_ BitVec 64))
(declare-fun x2_ack!3316 () (_ BitVec 64))
(declare-fun x3_ack!3317 () (_ BitVec 64))
(declare-fun b_ack!3318 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3314)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3319) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3313)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3313)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3315) ((_ to_fp 11 53) a_ack!3320))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3316) ((_ to_fp 11 53) x1_ack!3315))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3317) ((_ to_fp 11 53) x2_ack!3316))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3318) ((_ to_fp 11 53) x3_ack!3317))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3320)
                                   ((_ to_fp 11 53) x1_ack!3315))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3315)
                                   ((_ to_fp 11 53) a_ack!3320)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3320)
                                   ((_ to_fp 11 53) x1_ack!3315)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
