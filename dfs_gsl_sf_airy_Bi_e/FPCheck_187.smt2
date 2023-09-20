(declare-fun a_ack!776 () (_ BitVec 64))
(declare-fun b_ack!775 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!776) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!776) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!776) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!776))
                           ((_ to_fp 11 53) #x4006a09e667f3bcd))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!776) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (= #x00000000 (bvand b_ack!775 #x00000007))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!776))
                           ((_ to_fp 11 53) #x4006a09e667f3bcd))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!776)
                                   ((_ to_fp 11 53) #x4006a09e667f3bcd)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3e03d0a543132a2d)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3df9ada3ae45c323)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3e03d0a543132a2d)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #xbe33ad73dd79da08)))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!8
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3df9ada3ae45c323)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #xbe51f6772145b286)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #xbe33ad73dd79da08)))
                    ((_ to_fp 11 53) #xbe45ae9c2c49dae6))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!11)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbe51f6772145b286)))
                    ((_ to_fp 11 53) #x3e86c5421558f801))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!14 a!11)
                            ((_ to_fp 11 53) #x3eb69b72f1f21c48)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!13)
                            ((_ to_fp 11 53) #x3ee5de1f7d01fcdd)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!14 a!11)
                                    ((_ to_fp 11 53) #x3eb69b72f1f21c48)))
                    ((_ to_fp 11 53) #x3f21bd7e695feb52))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!15 a!13)
                                    ((_ to_fp 11 53) #x3ee5de1f7d01fcdd)))
                    ((_ to_fp 11 53) #x3f70f3297ba05425))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!19)
                    a!17)))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #xbfad14ad00dd36aa)))
                    ((_ to_fp 11 53) #x3ffae89f995ad3ae))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff8000000000000) a!1)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cb0000000000000)
            (fp.mul roundNearestTiesToEven a!21 (CF_exp a!1)))))))))))))))))))))))))

(check-sat)
(exit)
