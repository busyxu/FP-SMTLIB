(declare-fun p0_ack!4648 () (_ BitVec 64))
(declare-fun x0_ack!4645 () (_ BitVec 64))
(declare-fun p2_ack!4644 () (_ BitVec 64))
(declare-fun p1_ack!4643 () (_ BitVec 64))
(declare-fun x1_ack!4646 () (_ BitVec 64))
(declare-fun step_size_ack!4647 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!4644))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!4645)
                                  ((_ to_fp 11 53) p0_ack!4648)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4645)
                                   ((_ to_fp 11 53) p0_ack!4648))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!4646)
                                  ((_ to_fp 11 53) p1_ack!4643)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4645)
                                   ((_ to_fp 11 53) p0_ack!4648))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!4644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4645)
                                   ((_ to_fp 11 53) p0_ack!4648))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!4647))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!4644)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!4645)
                                   ((_ to_fp 11 53) p0_ack!4648)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4646)
                                    ((_ to_fp 11 53) p1_ack!4643))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!4647))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!4645)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!4646)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!4644)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!4648)))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!4643)))
                   (fp.sub roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) p1_ack!4643)))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!6 a!8)
                      ((_ to_fp 11 53) #x0000000000000000))
              (fp.add roundNearestTiesToEven
                      a!10
                      ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
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
  (not (fp.eq (fp.abs a!5) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
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
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) step_size_ack!4647))
                 a!5)
         ((_ to_fp 11 53) step_size_ack!4647)))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) step_size_ack!4647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2))))
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
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) step_size_ack!4647))
                 ((_ to_fp 11 53) step_size_ack!4647))
         a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!4644))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!4645)
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4646)
                           ((_ to_fp 11 53) p1_ack!4643))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!4644)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!4645)
                                    ((_ to_fp 11 53) p0_ack!4648)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!4645)
                            ((_ to_fp 11 53) p0_ack!4648)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4646)
                                    ((_ to_fp 11 53) p1_ack!4643))))))
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
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!4647))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!4647))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!4647)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!4645)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4646)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!4644)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!4648)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!4648))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!4643)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!4643)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!9 a!11)
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) step_size_ack!4647))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!15 ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (FPCHECK_FADD_OVERFLOW x1_ack!4646 #x0000000000000000))

(check-sat)
(exit)
