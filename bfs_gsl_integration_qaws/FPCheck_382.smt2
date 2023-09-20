(declare-fun alpha1_ack!2998 () (_ BitVec 64))
(declare-fun beta_ack!2999 () (_ BitVec 64))
(declare-fun mu_ack!3000 () (_ BitVec 32))
(declare-fun nu_ack!3001 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2998)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2999)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3000)))
(assert (= #x00000001 mu_ack!3000))
(assert (= #x00000000 nu_ack!3001))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!2998)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2998)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2998)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) alpha1_ack!2998))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!5)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6)
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2998)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!9)
                            a!10))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2998)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!11)))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!12)
    a!13)))))))))

(check-sat)
(exit)
