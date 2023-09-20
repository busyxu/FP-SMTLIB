(declare-fun h_ack!1194 () (_ BitVec 64))
(declare-fun x_ack!1195 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1195)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!1194)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!1))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!4)))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) h_ack!1194))))
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
(let ((a!8 (fp.gt a!3
                  (fp.abs (fp.div roundNearestTiesToEven
                                  a!7
                                  ((_ to_fp 11 53) h_ack!1194))))))
  (not a!8))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1195)
                                    ((_ to_fp 11 53) h_ack!1194))
                            #x3ff8000000000000)
                    a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!10))
                    ((_ to_fp 11 53) h_ack!1194))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         (fp.abs a!11)))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!1))
      (a!6 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
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
                   ((_ to_fp 11 53) h_ack!1194))))
  (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1195)
                                    ((_ to_fp 11 53) h_ack!1194))
                            #x3ff8000000000000)
                    a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!10))
                    ((_ to_fp 11 53) h_ack!1194))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!11))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!1194)
                            (CF_pow a!12 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1195)
                         a!13)
                 ((_ to_fp 11 53) x_ack!1195))
         a!13))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1195)
                                    ((_ to_fp 11 53) h_ack!1194))
                            #x3ff8000000000000)
                    a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!10))
                    ((_ to_fp 11 53) h_ack!1194))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!11))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!1194)
                            (CF_pow a!12 #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!1195)
                         a!13)
                 a!13)
         ((_ to_fp 11 53) x_ack!1195)))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1195)
                                    ((_ to_fp 11 53) h_ack!1194))
                            #x3ff8000000000000)
                    a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!10))
                    ((_ to_fp 11 53) h_ack!1194))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!11))))
(let ((a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1195)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000)))
                    #x3ff8000000000000))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe8000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000))
                            ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    (CF_pow a!14 #x3ff8000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!1194)
                            (CF_pow a!12 #x3fe0000000000000))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401d555555555555)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    (CF_pow a!16 #x3ff8000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                            (fp.sub roundNearestTiesToEven
                                    (CF_pow a!16 #x3ff8000000000000)
                                    (CF_pow a!14 #x3ff8000000000000))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031555555555555)
                            (fp.sub roundNearestTiesToEven
                                    (CF_pow a!14 #x3ff8000000000000)
                                    (CF_pow a!18 #x3ff8000000000000))))))
(let ((a!20 (fp.abs (fp.div roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000))))))
  (not (fp.gt (fp.abs a!15) a!20))))))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!1194)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1195)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!1194)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194))
                           #x3ff8000000000000)
                   a!2))
      (a!10 (fp.sub roundNearestTiesToEven
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x_ack!1195)
                                    ((_ to_fp 11 53) h_ack!1194))
                            #x3ff8000000000000)
                    a!3)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                                   a!5)
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) h_ack!1194)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!7)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!2 a!3)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!1194)))
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1195)
                                   ((_ to_fp 11 53) h_ack!1194)))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!10))
                    ((_ to_fp 11 53) h_ack!1194))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.abs a!11))))
(let ((a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!1195)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000)))
                    #x3ff8000000000000))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe8000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000)))))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1195)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!1194)
                                    (CF_pow a!12 #x3fe0000000000000))
                            ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!13)
                            (fp.abs (CF_pow a!14 #x3ff8000000000000)))
                    (fp.abs (CF_pow a!15 #x3ff8000000000000)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4044ab851eb851ec)
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.abs (CF_pow a!17 #x3ff8000000000000))))))
  (FPCHECK_FDIV_ZERO
    (fp.mul roundNearestTiesToEven a!18 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) h_ack!1194)
            (CF_pow a!12 #x3fe0000000000000))))))))))))

(check-sat)
(exit)
