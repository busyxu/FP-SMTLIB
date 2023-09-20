(declare-fun a_ack!1856 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1856) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1856))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1856))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) a_ack!1856))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000))))))
  (fp.eq a!4
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!1856))
                 ((_ to_fp 11 53) #x4054000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000)))))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x4042000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!4)
                 a!3)
         a!4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!4)
                 a!4)
         a!3))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!3 a!4)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x406f800000000000)))
                   (fp.add roundNearestTiesToEven a!3 a!4))))
  (fp.eq a!6
         (fp.div roundNearestTiesToEven
                 a!5
                 ((_ to_fp 11 53) #x406f800000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!3 a!4)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x406f800000000000)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x406f800000000000)))))
  (fp.eq a!6 (fp.add roundNearestTiesToEven a!3 a!4))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!3 a!4)
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x406f800000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4078800000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!7 a!6)
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) a_ack!1856))
                 ((_ to_fp 11 53) #x4078800000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!1856))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1856)
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1856)
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4042000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4054000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) #x4062c00000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) a_ack!1856))
                   ((_ to_fp 11 53) a_ack!1856))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!3 a!4)
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x406f800000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4078800000000000)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) a_ack!1856))
                           ((_ to_fp 11 53) #x4078800000000000)))))
  (fp.eq a!8 a!6)))))))

(check-sat)
(exit)
