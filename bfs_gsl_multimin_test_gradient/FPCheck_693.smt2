(declare-fun p0_ack!8246 () (_ BitVec 64))
(declare-fun x0_ack!8243 () (_ BitVec 64))
(declare-fun p2_ack!8242 () (_ BitVec 64))
(declare-fun p1_ack!8241 () (_ BitVec 64))
(declare-fun x1_ack!8244 () (_ BitVec 64))
(declare-fun step_size_ack!8245 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!8242))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!8243)
                                  ((_ to_fp 11 53) p0_ack!8246)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!8242))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!8243)
                                   ((_ to_fp 11 53) p0_ack!8246))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!8244)
                                  ((_ to_fp 11 53) p1_ack!8241)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!8242))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!8243)
                                   ((_ to_fp 11 53) p0_ack!8246))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!8242))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!8243)
                                   ((_ to_fp 11 53) p0_ack!8246))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
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
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!8243)
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!8244)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!8241)))
                   (fp.sub roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) p1_ack!8241)))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!6 a!8)
                      ((_ to_fp 11 53) #x0000000000000000))
              (fp.add roundNearestTiesToEven
                      a!10
                      ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241)))))
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
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241)))))
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
                         ((_ to_fp 11 53) step_size_ack!8245))
                 a!5)
         ((_ to_fp 11 53) step_size_ack!8245)))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) step_size_ack!8245))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241)))))
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
                         ((_ to_fp 11 53) step_size_ack!8245))
                 ((_ to_fp 11 53) step_size_ack!8245))
         a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!15 ((_ to_fp 11 53) #x0000000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!8243)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!1))))))
  (not (fp.eq ((_ to_fp 11 53) x0_ack!8243) a!16))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!8243)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!1))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!16
                         ((_ to_fp 11 53) p0_ack!8246))
                 ((_ to_fp 11 53) p0_ack!8246))
         a!16)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!8243)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!1))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!16
                 (fp.sub roundNearestTiesToEven
                         a!16
                         ((_ to_fp 11 53) p0_ack!8246)))
         ((_ to_fp 11 53) p0_ack!8246))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!2))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!16
                         ((_ to_fp 11 53) p1_ack!8241))
                 ((_ to_fp 11 53) p1_ack!8241))
         a!16)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!2))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!16
                 (fp.sub roundNearestTiesToEven
                         a!16
                         ((_ to_fp 11 53) p1_ack!8241)))
         ((_ to_fp 11 53) p1_ack!8241))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!8242))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!8243)
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!8244)
                           ((_ to_fp 11 53) p1_ack!8241))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!8243)
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!8243)
                            ((_ to_fp 11 53) p0_ack!8246)))))
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
                                    ((_ to_fp 11 53) x1_ack!8244)
                                    ((_ to_fp 11 53) p1_ack!8241))))))
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
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) step_size_ack!8245))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!8245)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!8243)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!7 a!1)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!7 a!2))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!8242)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) p0_ack!8246)))
                   (fp.sub roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) p0_ack!8246))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) p1_ack!8241)))))
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
                                    ((_ to_fp 11 53) step_size_ack!8245))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.div roundNearestTiesToEven a!6 a!14))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x0_ack!8243)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!1)))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!8244)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!2))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!8242)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) p0_ack!8246)))
                    (fp.sub roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) p0_ack!8246))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) p1_ack!8241)))
                    (fp.sub roundNearestTiesToEven
                            a!18
                            ((_ to_fp 11 53) p1_ack!8241)))))
  (not (fp.geq (fp.add roundNearestTiesToEven
                       (fp.add roundNearestTiesToEven a!17 a!19)
                       ((_ to_fp 11 53) #x0000000000000000))
               (fp.add roundNearestTiesToEven
                       a!13
                       ((_ to_fp 11 53) #x0000000000000000)))))))))))))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 p2_ack!8242))

(check-sat)
(exit)
