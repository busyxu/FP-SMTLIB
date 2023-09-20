(declare-fun alpha1_ack!852 () (_ BitVec 64))
(declare-fun beta_ack!853 () (_ BitVec 64))
(declare-fun mu_ack!854 () (_ BitVec 32))
(declare-fun nu_ack!855 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!852)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!853) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!854))
(assert (= #x00000000 nu_ack!855))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!852)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!852)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!852)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) alpha1_ack!852))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!852)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7)
                           a!8))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!852)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!10)
                            a!11))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!852)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    a!13)
            a!14))))))))))

(check-sat)
(exit)
