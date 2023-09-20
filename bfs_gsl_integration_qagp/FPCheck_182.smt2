(declare-fun limit_ack!2771 () (_ BitVec 64))
(declare-fun epsabs_ack!2776 () (_ BitVec 64))
(declare-fun a_ack!2777 () (_ BitVec 64))
(declare-fun x1_ack!2772 () (_ BitVec 64))
(declare-fun x2_ack!2773 () (_ BitVec 64))
(declare-fun x3_ack!2774 () (_ BitVec 64))
(declare-fun b_ack!2775 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2771)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2776)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2772) ((_ to_fp 11 53) a_ack!2777))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2773) ((_ to_fp 11 53) x1_ack!2772))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2774) ((_ to_fp 11 53) x2_ack!2773))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2775) ((_ to_fp 11 53) x3_ack!2774))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2777)
                                   ((_ to_fp 11 53) x1_ack!2772))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2777)
                           ((_ to_fp 11 53) x1_ack!2772))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2772)
                           ((_ to_fp 11 53) a_ack!2777)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fef2a3e062af2d8)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3febae995e9cb2f3)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fe5bdb9228de198))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!8)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!9)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001)))
                    (fp.abs (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fc321082b7cd10f)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0ab76a4a94042)
                           a!6))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!7
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb335ccd53722e5)
                    a!10))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fbc00cbfda8818f) a!13)))))))

(check-sat)
(exit)
