(declare-fun h_ack!738 () (_ BitVec 64))
(declare-fun x_ack!739 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!739)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!738)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!1))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!4)))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) h_ack!738))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!4 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!6)))))
  (fp.gt a!3
         (fp.abs (fp.div roundNearestTiesToEven a!7 ((_ to_fp 11 53) h_ack!738))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!739)
                                    ((_ to_fp 11 53) h_ack!738))
                            #x3ff8000000000000)
                    a!2)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!738)))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7)
                           ((_ to_fp 11 53) h_ack!738))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!2 a!3)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738)))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!738))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!12))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000))))))
  (fp.eq a!14 (fp.abs a!12)))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!739)
                                    ((_ to_fp 11 53) h_ack!738))
                            #x3ff8000000000000)
                    a!2)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!738)))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7)
                           ((_ to_fp 11 53) h_ack!738))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!2 a!3)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738)))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!738))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!12))))
  (fp.eq (fp.sub roundNearestTiesToEven a!13 (fp.abs a!12))
         (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!739)
                                    ((_ to_fp 11 53) h_ack!738))
                            #x3ff8000000000000)
                    a!2)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!738)))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7)
                           ((_ to_fp 11 53) h_ack!738))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!2 a!3)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738)))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!738))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         (fp.abs a!12)))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!738)))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7)
                           ((_ to_fp 11 53) h_ack!738)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!1))
      (a!6 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!2)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!1 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!6))
                   ((_ to_fp 11 53) h_ack!738))))
  (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!738)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!739)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!738)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738))
                           #x3ff8000000000000)
                   a!3))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!739)
                                    ((_ to_fp 11 53) h_ack!738))
                            #x3ff8000000000000)
                    a!2)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!738)))
      (a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!7)
                           ((_ to_fp 11 53) h_ack!738))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401d555555555555)
                                    a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                    (fp.sub roundNearestTiesToEven a!2 a!3)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!739)
                                   ((_ to_fp 11 53) h_ack!738)))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!738))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.abs a!6)
            (fp.mul roundNearestTiesToEven
                    a!9
                    ((_ to_fp 11 53) #x3cb0000000000000)))
    (fp.abs a!12)))))))

(check-sat)
(exit)
