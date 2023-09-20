(declare-fun h_ack!1490 () (_ BitVec 64))
(declare-fun x_ack!1491 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1491)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) h_ack!1490)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  a!1
                                  (CF_pow a!2 #x3ff8000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (and (not a!3)
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               ((_ to_fp 11 53) h_ack!1490))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!4)))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) h_ack!1490))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!4 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!4 #x3ff8000000000000)
                                   (CF_pow a!2 #x3ff8000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!6 #x3ff8000000000000))))))
(let ((a!8 (fp.abs (fp.div roundNearestTiesToEven
                           a!7
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))))))
  (not (fp.gt (fp.abs a!3) a!8)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!11 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1491)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490)))))
      (a!12 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            a!12
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!7
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!10 a!11)
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         a!13)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!11 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1491)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!7
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!10 a!11)
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!8 (fp.abs (fp.div roundNearestTiesToEven
                           a!7
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))))))
  (fp.gt a!8 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!11 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1491)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490)))))
      (a!12 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            a!12
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!11)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))
                            (CF_pow a!14 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1491)
                         a!15)
                 ((_ to_fp 11 53) x_ack!1491))
         a!15)))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!11 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1491)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490)))))
      (a!12 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            a!12
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!11)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))
                            (CF_pow a!14 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1491)
                         a!15)
                 a!15)
         ((_ to_fp 11 53) x_ack!1491))))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1491)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1491)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!11 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1491)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!3 #x3ff8000000000000)
                                   (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1490)))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490)))))
      (a!12 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    (CF_pow a!3 #x3ff8000000000000))))))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            a!12
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!11)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1490))
                            (CF_pow a!14 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FADD_UNDERFLOW x_ack!1491 a!15)))))))))

(check-sat)
(exit)
