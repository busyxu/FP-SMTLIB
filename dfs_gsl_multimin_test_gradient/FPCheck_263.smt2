(declare-fun p0_ack!2696 () (_ BitVec 64))
(declare-fun x0_ack!2692 () (_ BitVec 64))
(declare-fun p2_ack!2691 () (_ BitVec 64))
(declare-fun p1_ack!2690 () (_ BitVec 64))
(declare-fun x1_ack!2693 () (_ BitVec 64))
(declare-fun step_size_ack!2694 () (_ BitVec 64))
(declare-fun epsabs_ack!2695 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!2691))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!2692)
                                  ((_ to_fp 11 53) p0_ack!2696)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!2693)
                                  ((_ to_fp 11 53) p1_ack!2690)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
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
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!2691)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696)))))
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
                                    ((_ to_fp 11 53) x1_ack!2693)
                                    ((_ to_fp 11 53) p1_ack!2690))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!2692)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!2693)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!2691)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!2696)))
                   (fp.sub roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!2690)))
                   (fp.sub roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) p1_ack!2690)))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!6 a!8)
                 ((_ to_fp 11 53) #x0000000000000000))
         (fp.add roundNearestTiesToEven
                 a!10
                 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!2695)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!2692)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1))))))
(let ((a!6 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!2691))
                          (fp.sub roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) p0_ack!2696)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!6))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!2693)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  a!5
                                  ((_ to_fp 11 53) p1_ack!2690)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!6))))))))
(assert (not (fp.lt ((_ to_fp 11 53) #x0000000000000000)
            ((_ to_fp 11 53) epsabs_ack!2695))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2692)
                                   ((_ to_fp 11 53) p0_ack!2696))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!2692)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!2693)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!2696)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!2690))))))
(let ((a!9 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!6)
                           a!8)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) step_size_ack!2694)
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              (ite a!9 #x3ff0000000000000 #xbff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq a!10 ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!2692)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!2693)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!2696)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!2690))))))
(let ((a!9 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!6)
                           a!8)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) step_size_ack!2694)
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              (ite a!9 #x3ff0000000000000 #xbff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!2691)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) p0_ack!2696)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) p0_ack!2696)))))
  (fp.geq (fp.abs a!12) ((_ to_fp 11 53) #x0010000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2691))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2692)
                           ((_ to_fp 11 53) p0_ack!2696))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2693)
                           ((_ to_fp 11 53) p1_ack!2690)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!2692)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!1)))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!2693)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!4 a!2))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2691))
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) p0_ack!2696)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) p1_ack!2690))))))
(let ((a!9 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!6)
                           a!8)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) step_size_ack!2694)
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53)
                              (ite a!9 #x3ff0000000000000 #xbff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.abs a!1)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!1)))))
      (a!13 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    (fp.mul roundNearestTiesToEven a!10 a!2))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!2691)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) p0_ack!2696)))
                    (fp.sub roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) p0_ack!2696))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) p1_ack!2690)))
                    (fp.sub roundNearestTiesToEven
                            a!13
                            ((_ to_fp 11 53) p1_ack!2690)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!12 a!14)
    #x0000000000000000)))))))))))

(check-sat)
(exit)
