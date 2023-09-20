(declare-fun a_ack!1860 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1860) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!1860))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 ((_ to_fp 11 53) #x4028000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x4028000000000000)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   a!1))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4042000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           a!1)
                   a!1))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           ((_ to_fp 11 53) #x4062c00000000000)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!1)
                                   a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4091300000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x406f800000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           ((_ to_fp 11 53) #x4082000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4089500000000000)))))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!4
                         (fp.add roundNearestTiesToEven a!9 a!4)))
         ((_ to_fp 11 53) #x3ca0000000000000)))))))))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!1860)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (CF_log (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1860))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4042000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   a!1))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3fc0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (CF_log (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1860))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           ((_ to_fp 11 53) #x4062c00000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           a!1)
                   a!1))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc5555555555555)
                                    a!10)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x406f800000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4091300000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!11))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!1)
                           ((_ to_fp 11 53) #x4082000000000000))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!12))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4089500000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x400a51a6625307d3)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!8 a!9)
                            a!14))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!15 a!17)
                 a!17)
         a!15)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (CF_log (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1860))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4042000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   a!1))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3fc0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (CF_log (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!1860))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           ((_ to_fp 11 53) #x4062c00000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           a!1)
                   a!1))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc5555555555555)
                                    a!10)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x406f800000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4091300000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!11))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!1)
                           ((_ to_fp 11 53) #x4082000000000000))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!12))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4089500000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x400a51a6625307d3)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!8 a!9)
                            a!14))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!15
                 (fp.sub roundNearestTiesToEven a!15 a!17))
         a!17)))))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1860)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!2)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x4042000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!2)
                           a!2)
                   a!2))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fc0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!2)
                           ((_ to_fp 11 53) #x4062c00000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!2)
                           a!2)
                   a!2))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc5555555555555)
                                    a!11)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x406f800000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!2)
                                    a!2)
                            a!2)
                    ((_ to_fp 11 53) #x4091300000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!12))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!2)
                           ((_ to_fp 11 53) #x4082000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!13))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!7 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x4089500000000000))))
      (a!15 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d29000000000000)
                            (fp.abs (fp.add roundNearestTiesToEven a!9 a!10)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            a!15))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!1)
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cb0000000000000)
                            a!1))))
  (fp.eq a!17 a!16))))))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!1860)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!2)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x4042000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!2)
                           a!2)
                   a!2))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!2
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fc0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!2)
                           ((_ to_fp 11 53) #x4062c00000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!2)
                           a!2)
                   a!2))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc5555555555555)
                                    a!11)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x406f800000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!2)
                                    a!2)
                            a!2)
                    ((_ to_fp 11 53) #x4091300000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!12))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!2)
                           ((_ to_fp 11 53) #x4082000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!13))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!7 a!2)
                                   a!2)
                           ((_ to_fp 11 53) #x4089500000000000))))
      (a!15 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d29000000000000)
                            (fp.abs (fp.add roundNearestTiesToEven a!9 a!10)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            a!15))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!1)
                            a!16)
                    a!16)))
  (fp.eq a!17
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cb0000000000000)
                 a!1)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!1860)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4028000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4042000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   a!1))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3fc0000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           ((_ to_fp 11 53) #x4062c00000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!1)
                           a!1)
                   a!1))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc5555555555555)
                                    a!10)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x406f800000000000))))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           a!1)
                   ((_ to_fp 11 53) #x4091300000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!11))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4078800000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!6 a!1)
                           ((_ to_fp 11 53) #x4082000000000000))))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!12))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!6 a!1)
                                   a!1)
                           ((_ to_fp 11 53) #x4089500000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13))))
  (FPCHECK_FADD_OVERFLOW
    #x400a51a6625307d3
    (fp.abs (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!8 a!9)
                    a!14))))))))))

(check-sat)
(exit)
