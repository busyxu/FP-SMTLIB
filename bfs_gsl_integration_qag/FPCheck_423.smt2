(declare-fun key_ack!4440 () (_ BitVec 32))
(declare-fun limit_ack!4439 () (_ BitVec 64))
(declare-fun epsabs_ack!4438 () (_ BitVec 64))
(declare-fun b_ack!4437 () (_ BitVec 64))
(declare-fun a_ack!4441 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!4440 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!4440)))
(assert (= #x00000001 key_ack!4440))
(assert (not (bvult #x00000000000003e8 limit_ack!4439)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4438)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4441)
                                   ((_ to_fp 11 53) b_ack!4437))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4441)
                           ((_ to_fp 11 53) b_ack!4437))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4437)
                                   ((_ to_fp 11 53) a_ack!4441)))
                   ((_ to_fp 11 53) #x3febacf827b9bb3e))))
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
  (FPCHECK_FMUL_UNDERFLOW
    #x3fbad384a34814c6
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
