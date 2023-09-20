(declare-fun alpha1_ack!2170 () (_ BitVec 64))
(declare-fun beta_ack!2171 () (_ BitVec 64))
(declare-fun mu_ack!2172 () (_ BitVec 32))
(declare-fun nu_ack!2173 () (_ BitVec 32))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2170)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2171)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!2172))
(assert (= #x00000000 nu_ack!2173))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4022000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4022000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!10 (fp.div roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) alpha1_ack!2170)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401c000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4022000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) alpha1_ack!2170))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!11)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!17)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!20)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!22))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!23)))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!24)
                            a!25))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!26)))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!27)
                            a!28))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!29)))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!30)
                            a!31))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!32)))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!33)
                            a!34))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!35)))
(let ((a!38 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!36)
                            a!37)
                    a!37)))
  (not (fp.eq a!38
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x8000000000000000)
                      a!36))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4022000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!10 (fp.div roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) alpha1_ack!2170)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401c000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4022000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) alpha1_ack!2170))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!11)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!17)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!20)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!22))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!23)))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!24)
                            a!25))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!26)))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!27)
                            a!28))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!29)))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!30)
                            a!31))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!32)))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!33)
                            a!34))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!35)))
(let ((a!38 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!36)
                            a!37))))
  (not (fp.eq a!38 ((_ to_fp 11 53) #x0000000000000000))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4022000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!10 (fp.div roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) alpha1_ack!2170)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401c000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4022000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) alpha1_ack!2170))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!11)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!17)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!20)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!22))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!23)))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!24)
                            a!25))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!26)))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!27)
                            a!28))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!29)))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!30)
                            a!31))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!32)))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!33)
                            a!34))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!35)))
(let ((a!38 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!36)
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!36)
                            a!37))))
  (fp.eq a!38 a!37))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4026000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4022000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!2170)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) alpha1_ack!2170)
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401c000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4020000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!38 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4022000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) alpha1_ack!2170))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!13)
                            a!14))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!17))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!19)
                            a!20))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!22)
                            a!23))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!24)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!25)
                            a!26))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!27)))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!28)
                            a!29))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!30)))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!31)
                            a!32))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!33)))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!34)
                            a!35))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!36)))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!37)
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!2170)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!39)))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!40)))))))))))))))))))))))

(check-sat)
(exit)
