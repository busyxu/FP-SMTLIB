(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun b_ack!578 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!579)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!579)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!579)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!579)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 ((_ to_fp 11 53) #x3feffffffffff950))
         (fp.mul roundNearestTiesToEven a!2 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         (fp.mul roundNearestTiesToEven a!2 a!1))
                 (fp.mul roundNearestTiesToEven a!2 a!1))
         ((_ to_fp 11 53) #x3feffffffffff950)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!578)
                       ((_ to_fp 11 53) b_ack!578))
               ((_ to_fp 11 53) b_ack!578))
       ((_ to_fp 11 53) b_ack!578)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!578)
                       ((_ to_fp 11 53) b_ack!578))
               ((_ to_fp 11 53) b_ack!578))
       ((_ to_fp 11 53) b_ack!578)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!579)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!8 a!8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!578)
                                    ((_ to_fp 11 53) b_ack!578))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   (fp.mul roundNearestTiesToEven a!2 a!1))
                           (fp.mul roundNearestTiesToEven a!4 a!3))
                   (fp.mul roundNearestTiesToEven a!6 a!5))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!9 a!8))
                            (fp.mul roundNearestTiesToEven a!11 a!10))
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!9 a!8)))))
  (fp.eq a!12 (fp.mul roundNearestTiesToEven a!11 a!10)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!579)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!8 a!8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!10)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!578)
                                    ((_ to_fp 11 53) b_ack!578))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   (fp.mul roundNearestTiesToEven a!2 a!1))
                           (fp.mul roundNearestTiesToEven a!4 a!3))
                   (fp.mul roundNearestTiesToEven a!6 a!5))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!9 a!8))
                            (fp.mul roundNearestTiesToEven a!11 a!10))
                    (fp.mul roundNearestTiesToEven a!11 a!10))))
  (fp.eq a!12
         (fp.add roundNearestTiesToEven
                 a!7
                 (fp.mul roundNearestTiesToEven a!9 a!8))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!579)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!6)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!8 a!8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!11 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!578)
                                    ((_ to_fp 11 53) b_ack!578))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) b_ack!578)))
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) b_ack!578)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!5
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) b_ack!578)))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) b_ack!578)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) b_ack!578)))
                    (fp.mul roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) b_ack!578)))))
  (fp.eq a!13 a!10)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!579)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!6)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!8 a!8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578)))))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!11 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!578)
                                    ((_ to_fp 11 53) b_ack!578))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) b_ack!578)))
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) b_ack!578)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!5
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) b_ack!578)))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) b_ack!578)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) b_ack!578))))))
  (fp.eq a!13 (fp.mul roundNearestTiesToEven a!12 ((_ to_fp 11 53) b_ack!578)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!578)
                           ((_ to_fp 11 53) b_ack!578)))))
(let ((a!3 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                  a!2)
                          a!2)
                  ((_ to_fp 11 53) #xbfc1bcb2992b2855))))
  (not a!3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!578)
                           ((_ to_fp 11 53) b_ack!578)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                         a!2))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!578)
                                   ((_ to_fp 11 53) b_ack!578))))))
  (FPCHECK_FMUL_OVERFLOW a!2 a!1))))

(check-sat)
(exit)
