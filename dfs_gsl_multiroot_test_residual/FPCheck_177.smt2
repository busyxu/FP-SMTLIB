(declare-fun x0_ack!545 () (_ BitVec 64))
(declare-fun x1_ack!544 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x0_ack!545)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x0_ack!545))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq a!2 ((_ to_fp 11 53) x0_ack!545)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
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
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x1_ack!544)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x1_ack!544))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
  (fp.eq a!2 ((_ to_fp 11 53) x1_ack!544)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!545)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
  (not (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!2 a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
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
                           ((_ to_fp 11 53) x0_ack!545))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
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
                   ((_ to_fp 11 53) x0_ack!545)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
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
                                   ((_ to_fp 11 53) x0_ack!545)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!544)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   a!4)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545)))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!545))))))
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
                           ((_ to_fp 11 53) x0_ack!545))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!4 a!5)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
(let ((a!7 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          (fp.mul roundNearestTiesToEven a!6 a!6))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!7))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!545))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!544)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!544)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!545)
                                   ((_ to_fp 11 53) x0_ack!545))))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!4 a!5)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!544))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!6))))
  (FPCHECK_FINVALID_SQRT a!7 a!7))))))

(check-sat)
(exit)
