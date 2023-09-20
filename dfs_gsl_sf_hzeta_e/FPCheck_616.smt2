(declare-fun a_ack!1894 () (_ BitVec 64))
(declare-fun b_ack!1893 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!1894))
                          (CF_log b_ack!1893))
                  ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!1894))
                          (CF_log b_ack!1893))
                  ((_ to_fp 11 53) #x40862642fefa39ef))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x404b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1893) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1894) ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fb5555555555555)
                       ((_ to_fp 11 53) a_ack!1894))
               ((_ to_fp 11 53) #x3fb5555555555555))
       ((_ to_fp 11 53) a_ack!1894)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1894))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fb5555555555555)
                       ((_ to_fp 11 53) a_ack!1894))
               ((_ to_fp 11 53) a_ack!1894))
       ((_ to_fp 11 53) #x3fb5555555555555)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb5555555555555)
                           ((_ to_fp 11 53) a_ack!1894))
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!3)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!14 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   (fp.add roundNearestTiesToEven a!13 a!2)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!14))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1894)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1894)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!5)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf56c16c16c16c17)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1))
                   a!3))
      (a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!17 (fp.abs (fp.div roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!15 a!16)
                                    a!4)))))
  (not (fp.lt a!17 ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f01566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!4 a!7)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1894)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1))
                    a!6)))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!6 a!5))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!17 a!18)
                                    a!19)
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!6 a!5))))))
  (not (fp.lt (fp.abs a!20) ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2))))
  (fp.eq a!5 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven a!4 a!3)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!1894)
                         a!1)
                 a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))
                   a!6))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!5 a!9)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbeabbd779334ef0b)
                           a!4)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!7 a!6)
                           a!6)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1))
                    a!7)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!20)
                                    a!21)
                            (fp.mul roundNearestTiesToEven
                                    a!22
                                    (fp.div roundNearestTiesToEven a!7 a!6)))
                    a!8)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!8 a!23))
              ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                         (fp.mul roundNearestTiesToEven a!4 a!5))
                 ((_ to_fp 11 53) #x3e566a8f2bf70ebe))
         (fp.mul roundNearestTiesToEven a!4 a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!4 a!5))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                         (fp.mul roundNearestTiesToEven a!4 a!5))
                 (fp.mul roundNearestTiesToEven a!4 a!5))
         ((_ to_fp 11 53) #x3e566a8f2bf70ebe)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))
                   a!7))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!10)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1)
                            a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                           (fp.mul roundNearestTiesToEven a!4 a!5))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!8 a!7)
                                   a!7)
                           a!7)))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1))
                    a!8)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!21)
                                    a!22)
                            (fp.mul roundNearestTiesToEven
                                    a!23
                                    (fp.div roundNearestTiesToEven a!8 a!7)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!8 a!7)
                                    a!7)))))
(let ((a!25 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!9
                                   (fp.add roundNearestTiesToEven a!24 a!9)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!25)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1893)))
                   a!8))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!7 a!12)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1)
                            a!2))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!9 a!8)
                            a!8)
                    a!8))
      (a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1))
                    a!9)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!10 a!8)))
      (a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!23)
                                    a!24)
                            (fp.mul roundNearestTiesToEven
                                    a!25
                                    (fp.div roundNearestTiesToEven a!9 a!8)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    a!8)))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!10))))
(let ((a!28 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!11
                                   (fp.add roundNearestTiesToEven a!27 a!11)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!28))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3dad6db2c4e09162)
                         a!8)
                 ((_ to_fp 11 53) #x3dad6db2c4e09162))
         a!8)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!5)
                                   a!6)
                           a!7))))
  (not (fp.eq a!8 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3dad6db2c4e09162)
                         a!8)
                 a!8)
         ((_ to_fp 11 53) #x3dad6db2c4e09162))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!1893))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1894))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!1893))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!1893))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1894)
                                   a!1)
                           a!2)
                   a!3))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893)))
                    a!10))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!9 a!14)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!1894))
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1893)))))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3dad6db2c4e09162)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!5)
                                   a!6)
                           a!7)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!11 a!10)
                            a!10)
                    a!10))
      (a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1894)
                                    a!1))
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!12 a!10)
                            a!10)))
      (a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!12 a!10))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1893))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1894))))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.mul roundNearestTiesToEven
                                    a!27
                                    (fp.div roundNearestTiesToEven a!11 a!10)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!11 a!10)
                                    a!10)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!12))))
(let ((a!31 (fp.abs (fp.div roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!30)
                                    a!13)))))
  (not (fp.lt a!31 ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) b_ack!1893))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) b_ack!1893))))

(check-sat)
(exit)
