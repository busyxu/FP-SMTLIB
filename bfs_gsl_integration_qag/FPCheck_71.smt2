(declare-fun key_ack!769 () (_ BitVec 32))
(declare-fun limit_ack!768 () (_ BitVec 64))
(declare-fun epsabs_ack!767 () (_ BitVec 64))
(declare-fun b_ack!766 () (_ BitVec 64))
(declare-fun a_ack!770 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt key_ack!769 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!768)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!767)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!770)
                                   ((_ to_fp 11 53) b_ack!766))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!770)
                           ((_ to_fp 11 53) b_ack!766))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!766)
                                   ((_ to_fp 11 53) a_ack!770)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1face039200b067f)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1fd65671b94ae69c))))
  (FPCHECK_FADD_OVERFLOW a!3 a!4))))

(check-sat)
(exit)
