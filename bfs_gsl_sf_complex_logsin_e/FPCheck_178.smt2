(declare-fun b_ack!389 () (_ BitVec 64))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!390 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!389))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ca6827863b97d97)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da93974a8c07c9d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e21eed8eff8d898)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3efa01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f56c16c16c16c17)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!8)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (not (fp.eq (fp.mul roundNearestTiesToEven (CF_sin a_ack!390) a!9)
                        ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!10))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ce952c77030ad4a)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3de6124613a86d09)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f2a01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f81111111111111)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!7))))
(let ((a!9 (fp.eq (fp.mul roundNearestTiesToEven
                          (CF_cos a_ack!390)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!389)
                                  a!8))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!9)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ca6827863b97d97))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            ((_ to_fp 11 53) #x3ce952c77030ad4a)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da93974a8c07c9d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!1)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3de6124613a86d09)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!10))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e21eed8eff8d898)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!2)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e5ae64567f544e4)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!11))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!3)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ec71de3a556c734)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!12))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3efa01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!4)))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f2a01a01a01a01a)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!13))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f56c16c16c16c17)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!5)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f81111111111111)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!14))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!6)))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc5555555555555)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!15))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!7)))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!16))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!8)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.abs (fp.mul roundNearestTiesToEven
                            (CF_cos a_ack!390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    a!17)))))
  (fp.lt (fp.abs (fp.mul roundNearestTiesToEven (CF_sin a_ack!390) a!9)) a!18)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ca6827863b97d97))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            ((_ to_fp 11 53) #x3ce952c77030ad4a)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da93974a8c07c9d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!1)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3de6124613a86d09)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!10))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e21eed8eff8d898)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!2)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e5ae64567f544e4)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!11))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!3)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ec71de3a556c734)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!12))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3efa01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!4)))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f2a01a01a01a01a)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!13))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f56c16c16c16c17)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!5)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f81111111111111)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!14))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!6)))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc5555555555555)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!15))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!7)))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!16))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!8)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.abs (fp.mul roundNearestTiesToEven
                            (CF_cos a_ack!390)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    a!17)))))
(let ((a!19 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_sin a_ack!390)
                                   a!9))
                   a!18)))
  (not a!19))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ce952c77030ad4a))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ca6827863b97d97)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3de6124613a86d09)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!1)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3da93974a8c07c9d)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!9))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!2)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e21eed8eff8d898)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!10))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!3)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!11))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f2a01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!4)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3efa01a01a01a01a)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!12))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f81111111111111)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!5)))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f56c16c16c16c17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!13))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!6)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa5555555555555)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!14))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           a!7)))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!15))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!389)
                                    ((_ to_fp 11 53) b_ack!389))
                            a!16)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!18 (CF_atan2 (fp.mul roundNearestTiesToEven
                              (CF_cos a_ack!390)
                              (fp.mul roundNearestTiesToEven
                                      ((_ to_fp 11 53) b_ack!389)
                                      a!8))
                      (fp.mul roundNearestTiesToEven (CF_sin a_ack!390) a!17))))
(let ((a!19 (bvmul #x00000002
                   (ite (fp.geq a!18 ((_ to_fp 11 53) #x0000000000000000))
                        #x00000001
                        #xffffffff))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a!19)
                    (CF_floor (fp.div roundNearestTiesToEven
                                      (fp.abs a!18)
                                      ((_ to_fp 11 53) #x401921fb54442d18))))))
  (FPCHECK_FSUB_OVERFLOW
    a!18
    (fp.mul roundNearestTiesToEven a!20 ((_ to_fp 11 53) #x400921fb40000000))))))))))))))))

(check-sat)
(exit)
