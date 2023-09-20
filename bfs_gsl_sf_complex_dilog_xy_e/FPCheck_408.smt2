(declare-fun b_ack!1421 () (_ BitVec 64))
(declare-fun a_ack!1422 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1421) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   ((_ to_fp 11 53) a_ack!1422))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1421)
                                   ((_ to_fp 11 53) b_ack!1421)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1422)
                                  ((_ to_fp 11 53) a_ack!1422))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1421)
                                  ((_ to_fp 11 53) b_ack!1421)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!1422)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   ((_ to_fp 11 53) a_ack!1422))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1421)
                                   ((_ to_fp 11 53) b_ack!1421))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1422)
                           ((_ to_fp 11 53) a_ack!1422))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1421)
                           ((_ to_fp 11 53) b_ack!1421)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1421))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff8000000000001)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!4))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.sub roundNearestTiesToEven
                           a!4
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!4)
                                   a!6)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!5))
                   (fp.mul roundNearestTiesToEven a!7 a!7)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!5))
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!5))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!4)
                            a!7)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!4)
                            a!7))))
(let ((a!12 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   (fp.add roundNearestTiesToEven a!10 a!11)))
                   ((_ to_fp 11 53) #x3970000000000000))))
  (not a!12))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1422)
                           ((_ to_fp 11 53) a_ack!1422))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1421)
                           ((_ to_fp 11 53) b_ack!1421)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1421))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff8000000000001)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1422)
                                    a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!4))))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!4)
                           a!6))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.sub roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!5)
                                   (fp.mul roundNearestTiesToEven a!4 a!7)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.sub roundNearestTiesToEven
                           a!7
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!7)
                                   (fp.mul roundNearestTiesToEven a!4 a!5))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!5))
                    a!8))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!4)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!7))
                    a!9)))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!8)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!11 a!11)
                                    (fp.mul roundNearestTiesToEven a!12 a!12))))))
  (not (fp.lt a!13 ((_ to_fp 11 53) #x3970000000000000)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1422)
                           ((_ to_fp 11 53) a_ack!1422))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1421)
                           ((_ to_fp 11 53) b_ack!1421)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1421))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff8000000000001)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1422)
                                    a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!4))))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!4)
                           a!6))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!5)
                           (fp.mul roundNearestTiesToEven a!4 a!7))))
      (a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!7)
                           (fp.mul roundNearestTiesToEven a!4 a!5)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!8)
                                    (fp.mul roundNearestTiesToEven a!4 a!9)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!9)
                                    (fp.mul roundNearestTiesToEven a!4 a!8)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!8)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!4)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!10)
                            (fp.mul roundNearestTiesToEven a!11 a!11))
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!13 a!10)
                                    (fp.add roundNearestTiesToEven a!13 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!14 a!11)
                                    (fp.add roundNearestTiesToEven a!14 a!11))))))
  (not (fp.lt (fp.abs a!15) ((_ to_fp 11 53) #x3970000000000000)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1422)
                           ((_ to_fp 11 53) a_ack!1422))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1421)
                           ((_ to_fp 11 53) b_ack!1421)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1421))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff8000000000001)
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1422)
                                    a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!4))))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!4)
                           a!6))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!5)
                           (fp.mul roundNearestTiesToEven a!4 a!7))))
      (a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!7)
                           (fp.mul roundNearestTiesToEven a!4 a!5)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!2 a!8)
                            (fp.mul roundNearestTiesToEven a!4 a!9))))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!2 a!9)
                            (fp.mul roundNearestTiesToEven a!4 a!8))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!8)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!4)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x7ff0000000000001)
                            a!9))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.sub roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!10)
                                    (fp.mul roundNearestTiesToEven a!4 a!11)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!11)
                                    (fp.mul roundNearestTiesToEven a!4 a!10))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!10))
                    a!12))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff0000000000001)
                                    a!11))
                    a!13)))
(let ((a!19 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!12 a!12)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!16 a!16)
                                    (fp.mul roundNearestTiesToEven a!18 a!18))))))
  (not (fp.lt a!19 ((_ to_fp 11 53) #x3970000000000000)))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1422)
                           ((_ to_fp 11 53) a_ack!1422))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1421)
                           ((_ to_fp 11 53) b_ack!1421)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1421))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!2)
                           a!4)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1422)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           (fp.mul roundNearestTiesToEven a!2 a!7))))
      (a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!7)
                           (fp.mul roundNearestTiesToEven a!2 a!5)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!8)
                            (fp.mul roundNearestTiesToEven a!2 a!9))))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!9)
                            (fp.mul roundNearestTiesToEven a!2 a!8)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            (fp.mul roundNearestTiesToEven a!2 a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.sub roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!11)
                                    (fp.mul roundNearestTiesToEven a!2 a!10))))))
  (FPCHECK_FSUB_ACCURACY
    a!12
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!3 a!12)
            a!13))))))))))

(check-sat)
(exit)
