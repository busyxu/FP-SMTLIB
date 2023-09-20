(declare-fun x0_ack!421 () (_ BitVec 64))
(declare-fun x1_ack!420 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!421)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!421))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x3e50000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x1_ack!420)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!421)))))
(let ((a!2 (not (fp.eq (fp.div roundNearestTiesToEven
                               (fp.sub roundNearestTiesToEven a!1 a!1)
                               ((_ to_fp 11 53) #x3e50000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!420)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3e50000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!421)))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   a!4)
                           a!5)
                   ((_ to_fp 11 53) #x3e50000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!3
                      (fp.mul roundNearestTiesToEven a!6 a!6))
              ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!421))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!420)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!3 a!4)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!3 a!4)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
  (not (fp.eq a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) #x3e50000000000000))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!3 (ite (fp.geq (fp.div roundNearestTiesToEven
                                a!2
                                ((_ to_fp 11 53) #x3e50000000000000))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3e50000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000032)))))
  (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x0010000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!3 (ite (fp.geq (fp.div roundNearestTiesToEven
                                a!2
                                ((_ to_fp 11 53) #x3e50000000000000))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000032))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3e50000000000000)))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000032)))))
  (not (fp.eq a!5 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) #x3e50000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!6 (ite (fp.geq (fp.div roundNearestTiesToEven
                                a!5
                                ((_ to_fp 11 53) #x3e50000000000000))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3e50000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a!6))
                           ((_ to_fp 11 53) #x3ff0000000000032)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
  (not (fp.eq a!8 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!421))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) x0_ack!421)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!421)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!420)
                                    ((_ to_fp 11 53) #x3e50000000000000))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!421)
                                    ((_ to_fp 11 53) x0_ack!421))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   a!3)
                           a!4)
                   ((_ to_fp 11 53) #x3e50000000000000)))
      (a!7 (ite (fp.geq (fp.div roundNearestTiesToEven
                                (fp.sub roundNearestTiesToEven a!6 a!1)
                                ((_ to_fp 11 53) #x3e50000000000000))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven a!6 a!1)
                           ((_ to_fp 11 53) #x3e50000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a!7))
                           ((_ to_fp 11 53) #x3ff0000000000032))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000000 a!7))
                            ((_ to_fp 11 53) #x3ff0000000000032))
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!6 a!1)
                            ((_ to_fp 11 53) #x3e50000000000000)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))))
      (a!13 (fp.div roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000000 a!7))
                            ((_ to_fp 11 53) #x3ff0000000000032)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!2
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!10 a!4)
                                    ((_ to_fp 11 53) #x3e50000000000000)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            a!5
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)))))
  (FPCHECK_FMUL_ACCURACY a!11 a!14)))))))

(check-sat)
(exit)
