(declare-fun b_ack!2781 () (_ BitVec 64))
(declare-fun a_ack!2782 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) b_ack!2781))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!2782))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!2782))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!2782)))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2782))))))
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
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2782))))))
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
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2782))))))
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
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2782))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!2782)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc2492492492492)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3fc0000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc5555555555555)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!15))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4062c00000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!16))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!3 a!4)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4054000000000000)))
                   a!6))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4078800000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!1)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!17))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x406f800000000000)))
                    a!9))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1))
                    ((_ to_fp 11 53) #x4089500000000000)))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!1)))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!18))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4082000000000000)))
                    a!12))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!19))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!20))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x4091300000000000)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!22))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x400a51a6625307d3) a!23)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (CF_log a!1))
            (CF_log a!1))))))))))))))

(check-sat)
(exit)
