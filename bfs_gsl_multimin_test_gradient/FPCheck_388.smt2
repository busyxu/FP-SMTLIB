(declare-fun p0_ack!4258 () (_ BitVec 64))
(declare-fun x0_ack!4255 () (_ BitVec 64))
(declare-fun p2_ack!4254 () (_ BitVec 64))
(declare-fun p1_ack!4253 () (_ BitVec 64))
(declare-fun x1_ack!4256 () (_ BitVec 64))
(declare-fun step_size_ack!4257 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!4254))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!4255)
                                  ((_ to_fp 11 53) p0_ack!4258)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4255)
                                   ((_ to_fp 11 53) p0_ack!4258))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!4256)
                                  ((_ to_fp 11 53) p1_ack!4253)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4255)
                                   ((_ to_fp 11 53) p0_ack!4258))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4255)
                                   ((_ to_fp 11 53) p0_ack!4258))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!4257))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) p2_ack!4254))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!4254)
                         a!1)
                 ((_ to_fp 11 53) p2_ack!4254))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4255)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) p0_ack!4258)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!4254)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) p2_ack!4254))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!4253)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!4254)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4255)
                                   ((_ to_fp 11 53) p0_ack!4258)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4256)
                                   ((_ to_fp 11 53) p1_ack!4253)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!4254)
                                   a!1)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!2)
                           a!2))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!3
                      ((_ to_fp 11 53) #x0000000000000000))
              (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!4 a!5)
                      ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!4253)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4254)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!4255)
                                    ((_ to_fp 11 53) p0_ack!4258)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!4255)
                            ((_ to_fp 11 53) p0_ack!4258)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!4254)
                                   a!7)
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!8)
                           a!8)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4256)
                                    ((_ to_fp 11 53) p1_ack!4253))))))
(let ((a!4 ((_ to_fp 11 53)
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x3ff0000000000000
                  #xbff0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!4257))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!4257)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) step_size_ack!4257))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!12))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!13 ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!4253)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4254)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!4255)
                                    ((_ to_fp 11 53) p0_ack!4258)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!4255)
                            ((_ to_fp 11 53) p0_ack!4258)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!4254)
                                   a!7)
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!8)
                           a!8)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4256)
                                    ((_ to_fp 11 53) p1_ack!4253))))))
(let ((a!4 ((_ to_fp 11 53)
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x3ff0000000000000
                  #xbff0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!4257))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!4257)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) step_size_ack!4257))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!12))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!4255)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!1))))))
  (not (fp.eq ((_ to_fp 11 53) x0_ack!4255) a!14))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!4253)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4254)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!4255)
                                    ((_ to_fp 11 53) p0_ack!4258)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!4255)
                            ((_ to_fp 11 53) p0_ack!4258)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!4254)
                                   a!7)
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!8)
                           a!8)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4256)
                                    ((_ to_fp 11 53) p1_ack!4253))))))
(let ((a!4 ((_ to_fp 11 53)
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x3ff0000000000000
                  #xbff0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!4257))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!4257)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) step_size_ack!4257))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!12))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!4255)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!1)))))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4256)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!2))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4254)
                            (fp.sub roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) p0_ack!4258)))
                    (fp.sub roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) p0_ack!4258))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) p1_ack!4253)))
                    (fp.sub roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) p1_ack!4253)))))
  (not (fp.geq (fp.add roundNearestTiesToEven
                       (fp.add roundNearestTiesToEven a!15 a!17)
                       ((_ to_fp 11 53) #x0000000000000000))
               (fp.add roundNearestTiesToEven
                       a!11
                       ((_ to_fp 11 53) #x0000000000000000)))))))))))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) p2_ack!4254))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) p2_ack!4254)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) p2_ack!4254))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) p2_ack!4254))
               ((_ to_fp 11 53) p2_ack!4254))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) p0_ack!4258))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) p1_ack!4253))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4255)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!4258)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4256)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!4253)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4254)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!4255)
                                    ((_ to_fp 11 53) p0_ack!4258)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!4255)
                            ((_ to_fp 11 53) p0_ack!4258)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!4254)
                                   a!7)
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!8)
                           a!8)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4256)
                                    ((_ to_fp 11 53) p1_ack!4253))))))
(let ((a!4 ((_ to_fp 11 53)
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x3ff0000000000000
                  #xbff0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!4257))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!4257)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) step_size_ack!4257))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!12))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4256)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!2))))))
  (FPCHECK_FSUB_UNDERFLOW a!14 p1_ack!4253)))))))))

(check-sat)
(exit)
