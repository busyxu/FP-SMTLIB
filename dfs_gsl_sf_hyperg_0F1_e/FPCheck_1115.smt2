(declare-fun a_ack!2869 () (_ BitVec 64))
(declare-fun b_ack!2868 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2869) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2868) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2868) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2869)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!2869)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2869)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2869)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2869)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x40142eb8f3a779b9))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   ((_ to_fp 11 53) #x40142eb8f3a779b9))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!2869)
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2869)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2869)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2869)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x3ed965fea53d6e41)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!10 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   (fp.add roundNearestTiesToEven a!9 a!8)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!10)))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!12))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x7ff0000000000001))))))
(let ((a!18 (fp.abs (fp.div roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!17)
                                    a!15)))))
  (not (fp.lt a!18 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!14)))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!14))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!16 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!15))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!15))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!16))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20))))
(let ((a!24 (fp.div roundNearestTiesToEven
                    a!21
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!23)
                                    (fp.mul roundNearestTiesToEven a!10 a!20))
                            a!21))))
  (not (fp.lt (fp.abs a!24) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!28 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!18)))
      (a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!20 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!19))))
      (a!24 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!19))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!25
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven a!13 a!11))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!20))))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!20))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!24
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!25
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!16)))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!21))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!26))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!22
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!26))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!29)
                                    (fp.mul roundNearestTiesToEven a!10 a!26))
                            a!30)
                    (fp.mul roundNearestTiesToEven a!17 a!27))))
(let ((a!32 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!17 a!27)
                                   a!31))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!32)))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!34 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!21)))
      (a!30 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!21))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!23 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!22))))
      (a!29 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!22))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven a!13 a!11))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!23))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!23))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!29
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!16)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!16))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!24))))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!24))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!31))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!25))))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!27
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!31))))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!32)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!34 a!35)
                                    (fp.mul roundNearestTiesToEven a!10 a!31))
                            a!36)
                    (fp.mul roundNearestTiesToEven a!17 a!32))))
(let ((a!38 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!33
                                   (fp.add roundNearestTiesToEven a!37 a!33)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!38)))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!24 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!40 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!24)))
      (a!35 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!24))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!26 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!25))))
      (a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!25))))
      (a!41 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven a!13 a!11))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!26))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!26))))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!34
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!16)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!16))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!27))))
      (a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!27))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!36))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!19)
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!23 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!20))
                    a!21))
      (a!29 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!28))))
      (a!31 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!28))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!36))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!29))))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!40 a!41)
                                    (fp.mul roundNearestTiesToEven a!10 a!36))
                            a!42)
                    (fp.mul roundNearestTiesToEven a!17 a!37)))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!37))))
(let ((a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!37))))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    (fp.mul roundNearestTiesToEven a!19 a!20))
                            (fp.mul roundNearestTiesToEven a!22 a!23))
                    a!38)))
(let ((a!45 (fp.abs (fp.div roundNearestTiesToEven
                            a!39
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!43 a!44)
                                    a!39)))))
  (not (fp.lt a!45 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!28 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!46 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!28)))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!28))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!29))))
      (a!40 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!29))))
      (a!47 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven a!13 a!11))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!30))))
      (a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!30))))
      (a!42 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!40
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!16)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!16))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!31))))
      (a!38 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!31))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!39
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!42))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!19)
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!23 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!20))
                    a!21))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!32))))
      (a!37 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!32))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!38
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!39
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!42))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven a!22 a!23)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    a!22))
      (a!26 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!23))
                    (fp.sub roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x402c000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33))))
      (a!36 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33))))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!46 a!47)
                                    (fp.mul roundNearestTiesToEven a!10 a!42))
                            a!48)
                    (fp.mul roundNearestTiesToEven a!17 a!43)))
      (a!50 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!43))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!26)))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!34))))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!36
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!43))))
(let ((a!45 (fp.mul roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!44))))
(let ((a!51 (fp.div roundNearestTiesToEven
                    a!45
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!49 a!50)
                                    (fp.mul roundNearestTiesToEven a!24 a!44))
                            a!45))))
  (not (fp.lt (fp.abs a!51) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!31 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!52 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!31)))
      (a!46 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!31))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!28 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!32))))
      (a!45 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!32))))
      (a!53 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven
                            a!46
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven a!13 a!11))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33))))
      (a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33))))
      (a!47 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!45
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            a!46
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!16)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!16))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!34))))
      (a!43 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!34))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!44
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!47))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!19)
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!23 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!20))
                    a!21))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!35))))
      (a!42 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!35))))
      (a!48 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!43
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!44
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!47))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven a!22 a!23)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    a!22))
      (a!26 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!23))
                    (fp.sub roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x402c000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!36))))
      (a!41 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!36))))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!52 a!53)
                                    (fp.mul roundNearestTiesToEven a!10 a!47))
                            a!54)
                    (fp.mul roundNearestTiesToEven a!17 a!48)))
      (a!56 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!19 a!20))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!42
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!48))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!26)))
      (a!29 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!28
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    ((_ to_fp 11 53) #x4022000000000000)))
      (a!30 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!26))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!37))))
      (a!40 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!37))))
      (a!49 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!42
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!48))))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!38))))
      (a!57 (fp.mul roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!40
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!49))))
(let ((a!50 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!39
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!40
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!49))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!27
                            (fp.mul roundNearestTiesToEven a!29 a!30))
                    a!50)))
(let ((a!58 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!55 a!56)
                                    (fp.mul roundNearestTiesToEven a!24 a!49))
                            a!57)
                    a!51)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!51 a!58))
              ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!2869)
                             ((_ to_fp 11 53) #x3ff0000000000000))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2869)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!3)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!32 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x7ff0000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x7ff0000000000001)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!8)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!20 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!32)))
      (a!49 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!32))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            a!5)
                    (fp.mul roundNearestTiesToEven a!7 a!9)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!7)
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9)))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!29 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))
                    ((_ to_fp 11 53) #x4032000000000000)))
      (a!34 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33))))
      (a!48 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!33)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    a!12))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!34))))
      (a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!34)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.div roundNearestTiesToEven a!13 a!11)))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!15)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!11)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!15))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!35))))
      (a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!35))))
      (a!50 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!47
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!48
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    a!49
                                    ((_ to_fp 11 53) #x7ff0000000000001))))))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!20)
                            a!18)
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!19))
                    a!20))
      (a!37 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!36))))
      (a!45 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!36)))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    a!21))
      (a!24 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!22))
                    (fp.sub roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x402c000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!37))))
      (a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!37))))
      (a!51 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!45
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!46
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!50))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!19))
                            (fp.mul roundNearestTiesToEven a!21 a!22))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!24)))
      (a!27 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!26
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    ((_ to_fp 11 53) #x4022000000000000)))
      (a!28 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!24))
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!38))))
      (a!43 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!38)))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!29)
                            a!27)
                    ((_ to_fp 11 53) #x4024000000000000)))
      (a!31 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!28))
                    a!29))
      (a!40 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!39))))
      (a!42 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!39))))
      (a!52 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!43
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!44
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!51))))
(let ((a!41 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!40)))))
(let ((a!53 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!42
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!52))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven a!27 a!28))
            (fp.mul roundNearestTiesToEven a!30 a!31))
    a!53))))))))))))))))

(check-sat)
(exit)
