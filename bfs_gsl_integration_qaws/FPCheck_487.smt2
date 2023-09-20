(declare-fun alpha1_ack!3822 () (_ BitVec 64))
(declare-fun beta_ack!3823 () (_ BitVec 64))
(declare-fun mu_ack!3824 () (_ BitVec 32))
(declare-fun nu_ack!3825 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3822)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3823)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3824)))
(assert (= #x00000001 mu_ack!3824))
(assert (= #x00000000 nu_ack!3825))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!8 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!3822)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401c000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) alpha1_ack!3822))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!3822)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!10)
                            a!11))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!13)
                            a!14))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!17))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!19)
                            a!20))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!22)
                            a!23))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!24)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!25)
                            a!26))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!3822)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!27)))
  (FPCHECK_FDIV_ACCURACY
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!28)
    a!29)))))))))))))))))

(check-sat)
(exit)
