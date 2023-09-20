(declare-fun b_ack!1223 () (_ BitVec 64))
(declare-fun a_ack!1224 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1223))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!4)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1223))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 a!4)
         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!2)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!4)
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!5 a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!2)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!4)
                   a!4)))
  (fp.eq a!5
         (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)
                            a!12)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!4))))
  (fp.eq a!13 a!12)))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)
                            a!12)
                    a!12)))
  (fp.eq a!13
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!4))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!5)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!2))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!8))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!6)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    a!11
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)
                            a!11))))
  (fp.lt (fp.abs a!13) ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!3)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3)))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)
                            a!12)))
      (a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!2)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.sub roundNearestTiesToEven a!14 a!16))
                            ((_ to_fp 11 53) b_ack!1223))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!13)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!17 a!18)
                 a!17)
         a!18))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!3)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3)))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)
                            a!12)))
      (a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!2)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.sub roundNearestTiesToEven a!14 a!16))
                            ((_ to_fp 11 53) b_ack!1223))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!13)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!17 a!18)
                 a!18)
         a!17))))))))))
(assert (bvslt #x00000000
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!7)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!3)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!3)))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)
                            a!12)))
      (a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!2)))))
(let ((a!17 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.sub roundNearestTiesToEven a!14 a!16))
                            ((_ to_fp 11 53) b_ack!1223)))))
  (not (fp.gt a!17 ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!4)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!4))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!8)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!4)))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            a!13)))
      (a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!14
                                    (fp.sub roundNearestTiesToEven a!15 a!17))
                            ((_ to_fp 11 53) b_ack!1223)))))
  (not (fp.gt (fp.abs (fp.add roundNearestTiesToEven a!18 a!14))
              ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!5)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)
                            a!14)))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven a!16 a!18))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!20 a!15))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!21 a!19)
                 a!21)
         a!19))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!5)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)
                            a!14)))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven a!16 a!18))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!20 a!15))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!21 a!19)
                 a!19)
         a!21))))))))))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!5)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!9)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)
                            a!14)))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!4)))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.sub roundNearestTiesToEven a!16 a!18))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!20 a!15))))
  (not (fp.gt (fp.abs (fp.add roundNearestTiesToEven a!21 a!19))
              ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!6)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)
                            a!15)))
      (a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.sub roundNearestTiesToEven a!17 a!19))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!20)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!21 a!16))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!20))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!23
                         (fp.add roundNearestTiesToEven a!21 a!16))
                 a!23)
         (fp.add roundNearestTiesToEven a!21 a!16))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!6)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)
                            a!15)))
      (a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.sub roundNearestTiesToEven a!17 a!19))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!20)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!21 a!16))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!20))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!23
                         (fp.add roundNearestTiesToEven a!21 a!16))
                 (fp.add roundNearestTiesToEven a!21 a!16))
         a!23)))))))))))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!6)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!10)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!6)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!6)))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)
                            a!15)))
      (a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!5)))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.sub roundNearestTiesToEven a!17 a!19))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!20)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!21 a!16))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!20))))
(let ((a!24 (fp.gt (fp.abs (fp.add roundNearestTiesToEven
                                   a!23
                                   (fp.add roundNearestTiesToEven a!21 a!16)))
                   ((_ to_fp 11 53) #x5fefffffffffffff))))
  (not a!24))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!7)))
      (a!9 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))))
      (a!14 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7)
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)
                            a!16)))
      (a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)))))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.sub roundNearestTiesToEven a!18 a!20))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!21)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!17))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!21))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.add roundNearestTiesToEven a!22 a!17)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!25
                         (fp.add roundNearestTiesToEven a!23 a!21))
                 a!25)
         (fp.add roundNearestTiesToEven a!23 a!21)))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!7)))
      (a!9 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))))
      (a!14 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7)
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)
                            a!16)))
      (a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)))))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.sub roundNearestTiesToEven a!18 a!20))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!21)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!17))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!21))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.add roundNearestTiesToEven a!22 a!17)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!25
                         (fp.add roundNearestTiesToEven a!23 a!21))
                 (fp.add roundNearestTiesToEven a!23 a!21))
         a!25))))))))))))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!7)))
      (a!9 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))))
      (a!14 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!11)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!7)
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7)))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)
                            a!16)))
      (a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)))))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.sub roundNearestTiesToEven a!18 a!20))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!21)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!22 a!17))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!21))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.add roundNearestTiesToEven a!22 a!17)))))
(let ((a!26 (fp.gt (fp.abs (fp.add roundNearestTiesToEven
                                   a!25
                                   (fp.add roundNearestTiesToEven a!23 a!21)))
                   ((_ to_fp 11 53) #x5fefffffffffffff))))
  (not a!26)))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))))
      (a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!15)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8)
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            a!17)))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.sub roundNearestTiesToEven a!19 a!21))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!22)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!18))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!24 a!22))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven a!23 a!18)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven a!24 a!22)))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.add roundNearestTiesToEven a!23 a!18)))
                    a!27)))
  (fp.eq a!28
         (fp.add roundNearestTiesToEven
                 a!25
                 (fp.add roundNearestTiesToEven a!23 a!18))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))))
      (a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!15)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8)
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            a!17)))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.sub roundNearestTiesToEven a!19 a!21))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!22)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!18))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!24 a!22))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven a!23 a!18)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven a!24 a!22)))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.add roundNearestTiesToEven a!23 a!18)))
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven a!23 a!18)))))
  (fp.eq a!28 a!27))))))))))))))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32)
         roundTowardZero
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1224)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))))
      (a!15 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!14))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!12)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!15)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8)
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            a!17)))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!7)))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.sub roundNearestTiesToEven a!19 a!21))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!22)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!23 a!18))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!24 a!22))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven a!23 a!18)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven a!24 a!22)))))
(let ((a!28 (fp.abs (fp.add roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.add roundNearestTiesToEven a!23 a!18))))))
  (not (fp.gt a!28 ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1224)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1223)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4014000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   a!1))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1224)
                                    a!1)
                            ((_ to_fp 11 53) b_ack!1223))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8)
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8))))
      (a!16 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!15))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!13)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!16)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fec5bf891b4eeb6)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!10)
                            a!18)))
      (a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!8)))))
(let ((a!23 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.sub roundNearestTiesToEven a!20 a!22))
                    ((_ to_fp 11 53) b_ack!1223))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!7)
                            ((_ to_fp 11 53) b_ack!1223))
                    a!23)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!6)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!24 a!19))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!5)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven a!25 a!23))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven a!24 a!19)))))
(let ((a!28 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) b_ack!1223))
                    (fp.add roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven a!25 a!23)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!2)
            ((_ to_fp 11 53) b_ack!1223))
    (fp.add roundNearestTiesToEven
            a!28
            (fp.add roundNearestTiesToEven
                    a!26
                    (fp.add roundNearestTiesToEven a!24 a!19))))))))))))))))))

(check-sat)
(exit)
