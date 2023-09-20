(declare-fun x0_ack!1545 () (_ BitVec 64))
(declare-fun x1_ack!1544 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x0_ack!1545)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x0_ack!1545))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq a!2 ((_ to_fp 11 53) x0_ack!1545)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x1_ack!1544)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x1_ack!1544))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
  (fp.eq a!2 ((_ to_fp 11 53) x1_ack!1544)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
  (not (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!2 a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq a!3 (fp.mul roundNearestTiesToEven a!2 a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 (fp.mul roundNearestTiesToEven a!1 a!1))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1544)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   a!4)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545)))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!7 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  (fp.mul roundNearestTiesToEven a!3 a!3))
                          (fp.mul roundNearestTiesToEven a!6 a!6))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!7))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!4 a!5)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544))))))
(let ((a!7 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          (fp.mul roundNearestTiesToEven a!6 a!6))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1544)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   a!2)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
  (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!2)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!1)))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!7 a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3e50000000000000)
                            (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!3
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!11))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!13)
                            a!1)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x1_ack!1544)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!16)
                            a!2))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14)
                            a!17)
                    a!18)))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      a!19
                      ((_ to_fp 11 53) #x40465da009ac48a0))
              ((_ to_fp 11 53) #x0000000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!2)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!1)))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!7 a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3e50000000000000)
                            (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!3
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!11))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!13)
                            a!1)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x1_ack!1544)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!15))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!13)
                            a!1)))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!16)
                            a!2)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!16)
                            a!2))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14)
                            a!17)
                    a!18))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!20)
                            a!21)
                    a!23)))
  (fp.gt (fp.abs (fp.div roundNearestTiesToEven
                         a!19
                         ((_ to_fp 11 53) #x40465da009ac48a0)))
         (fp.abs (fp.div roundNearestTiesToEven
                         a!24
                         ((_ to_fp 11 53) #x40465da009ac48a0)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!1545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!1544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!1545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!2)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!2)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!1545)
                                   ((_ to_fp 11 53) x0_ack!1545)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!1)))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!7 a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!1544)))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3e50000000000000)
                            (fp.abs ((_ to_fp 11 53) x0_ack!1545))))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!3
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!11)))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!1545)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!13)
                            a!1)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) x1_ack!1544)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8)))
                    a!15))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.div roundNearestTiesToEven a!5 a!8))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!16)
                            a!2))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!14)
                            a!17)
                    a!19)))
  (FPCHECK_FMUL_OVERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven a!20 ((_ to_fp 11 53) #x40465da009ac48a0))))))))))))

(check-sat)
(exit)
