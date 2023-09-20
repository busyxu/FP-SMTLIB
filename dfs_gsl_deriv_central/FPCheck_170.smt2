(declare-fun h_ack!730 () (_ BitVec 64))
(declare-fun x_ack!731 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!731)
                    ((_ to_fp 11 53) h_ack!730))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) h_ack!730))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
(let ((a!6 (fp.gt a!2
                  (fp.abs (fp.div roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) h_ack!730))))))
  (not a!6)))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         (fp.abs a!10))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730)))))
  (fp.gt (fp.add roundNearestTiesToEven
                 (fp.abs a!6)
                 (fp.mul roundNearestTiesToEven
                         a!9
                         ((_ to_fp 11 53) #x3cb0000000000000)))
         ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!3 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!3)))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!3))
                   ((_ to_fp 11 53) h_ack!730))))
  (fp.gt (fp.abs a!5) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) h_ack!730))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) h_ack!730)
                         (CF_pow a!11 #x3fd5555555555555))
                 ((_ to_fp 11 53) h_ack!730))
         (CF_pow a!11 #x3fd5555555555555)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
  (not (fp.eq (fp.abs (CF_pow a!11 #x3fd5555555555555))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) h_ack!730)
                         (CF_pow a!11 #x3fd5555555555555))
                 (CF_pow a!11 #x3fd5555555555555))
         ((_ to_fp 11 53) h_ack!730)))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!731)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!730)
                                    (CF_pow a!11 #x3fd5555555555555)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!730)
                            (CF_pow a!11 #x3fd5555555555555)))))
  (fp.eq a!12 ((_ to_fp 11 53) x_ack!731))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!731)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x_ack!731)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!730)
                                    (CF_pow a!11 #x3fd5555555555555))))))
  (fp.eq a!12
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) h_ack!730)
                 (CF_pow a!11 #x3fd5555555555555)))))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!731)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!730)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!5 (fp.abs (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!731)
                                   ((_ to_fp 11 53) h_ack!730))
                           #x3ff8000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!1)
                                   (fp.abs a!2)))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!7)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) h_ack!730)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) h_ack!730)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!731))
                           ((_ to_fp 11 53) h_ack!730))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) h_ack!730))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs a!6)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3cb0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.abs a!10)))))
  (FPCHECK_FSUB_UNDERFLOW
    x_ack!731
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!730)
                    (CF_pow a!11 #x3fd5555555555555))
            ((_ to_fp 11 53) #x4000000000000000))))))))

(check-sat)
(exit)
