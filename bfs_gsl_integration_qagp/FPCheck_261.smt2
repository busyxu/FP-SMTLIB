(declare-fun limit_ack!3968 () (_ BitVec 64))
(declare-fun epsabs_ack!3973 () (_ BitVec 64))
(declare-fun a_ack!3974 () (_ BitVec 64))
(declare-fun x1_ack!3969 () (_ BitVec 64))
(declare-fun x2_ack!3970 () (_ BitVec 64))
(declare-fun x3_ack!3971 () (_ BitVec 64))
(declare-fun b_ack!3972 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3968)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3973)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3969) ((_ to_fp 11 53) a_ack!3974))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3970) ((_ to_fp 11 53) x1_ack!3969))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3971) ((_ to_fp 11 53) x2_ack!3970))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3972) ((_ to_fp 11 53) x3_ack!3971))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3974)
                                   ((_ to_fp 11 53) x1_ack!3969))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3974)
                           ((_ to_fp 11 53) x1_ack!3969))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3969)
                                   ((_ to_fp 11 53) a_ack!3974)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd2e9de7014d6ef
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
