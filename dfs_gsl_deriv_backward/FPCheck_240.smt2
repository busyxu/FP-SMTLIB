(declare-fun h_ack!1126 () (_ BitVec 64))
(declare-fun x_ack!1127 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1127)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) h_ack!1126)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
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
                               ((_ to_fp 11 53) h_ack!1126))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!4)))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) h_ack!1126))))
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
                                   ((_ to_fp 11 53) h_ack!1126))))))
  (fp.gt (fp.abs a!3) a!8))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!12 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.add roundNearestTiesToEven
                    a!12
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!14 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!13 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            ((_ to_fp 11 53) #x3cb0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!11 a!14)
                 a!11)
         a!14)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!12 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.add roundNearestTiesToEven
                    a!12
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!14 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!13 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            ((_ to_fp 11 53) #x3cb0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!11 a!14)
                 a!14)
         a!11)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!11 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!7
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!9 a!10)
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         a!13))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!3 #x3ff8000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) h_ack!1126)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3cb0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven (fp.abs a!8) a!9)
                            ((_ to_fp 11 53) #x3cb0000000000000)))))
  (fp.gt a!10 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
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
                                   ((_ to_fp 11 53) h_ack!1126))))))
  (fp.gt a!8 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!11 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))
                            (CF_pow a!14 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1127)
                         a!15)
                 ((_ to_fp 11 53) x_ack!1127))
         a!15))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!11 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))
                            (CF_pow a!14 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1127)
                         a!15)
                 a!15)
         ((_ to_fp 11 53) x_ack!1127)))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!11 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) h_ack!1126))
                    (CF_pow a!14 #x3fe0000000000000))))
(let ((a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    #x3ff8000000000000))
      (a!19 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!15))
                    #x3ff8000000000000))
      (a!21 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    #x3ff8000000000000)))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1127)
                                    a!15)
                            #x3ff8000000000000)
                    a!16))
      (a!20 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1127)
                                    a!15)
                            #x3ff8000000000000)
                    a!19)))
(let ((a!18 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!17)
                            a!15)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!20)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!19 a!16)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!16 a!21)))))
  (fp.gt a!18 (fp.abs (fp.div roundNearestTiesToEven a!22 a!15)))))))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1127)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!1127)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!10 (fp.abs (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (CF_pow a!3 #x3ff8000000000000))))
      (a!11 (fp.sub roundNearestTiesToEven
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
      (a!9 (fp.abs (fp.div roundNearestTiesToEven
                           a!8
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
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
                                   ((_ to_fp 11 53) h_ack!1126)))))
      (a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!8)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) h_ack!1126))))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) h_ack!1126))
                    (CF_pow a!14 #x3fe0000000000000))))
(let ((a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!15))
                    #x3ff8000000000000))
      (a!18 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    #x3ff8000000000000))
      (a!19 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1127)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    #x3ff8000000000000)))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1127)
                                    a!15)
                            #x3ff8000000000000)
                    a!16))
      (a!21 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1127)
                                    a!15)
                            #x3ff8000000000000)
                    a!18)))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!16 a!18)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!18 a!19)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.sub roundNearestTiesToEven
            a!20
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!21))
    a!15)))))))))))

(check-sat)
(exit)
