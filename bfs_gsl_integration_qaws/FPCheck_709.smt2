(declare-fun alpha1_ack!5565 () (_ BitVec 64))
(declare-fun beta_ack!5566 () (_ BitVec 64))
(declare-fun mu_ack!5567 () (_ BitVec 32))
(declare-fun nu_ack!5568 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!5565)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!5566)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!5567))
(assert (not (= #x00000000 nu_ack!5568)))
(assert (= #x00000001 nu_ack!5568))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) alpha1_ack!5565)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) alpha1_ack!5565))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha1_ack!5565)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!9)
                            a!10))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!11)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!14)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!17)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!18)
                            a!19))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!20)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!22))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) alpha1_ack!5565)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!23)))
  (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a!24)))))))))))))))

(check-sat)
(exit)
