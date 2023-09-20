(declare-fun p0_ack!2616 () (_ BitVec 64))
(declare-fun x0_ack!2613 () (_ BitVec 64))
(declare-fun p2_ack!2612 () (_ BitVec 64))
(declare-fun p1_ack!2611 () (_ BitVec 64))
(declare-fun x1_ack!2614 () (_ BitVec 64))
(declare-fun step_size_ack!2615 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!2612))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!2613)
                                  ((_ to_fp 11 53) p0_ack!2616)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2612))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2613)
                                   ((_ to_fp 11 53) p0_ack!2616))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!2614)
                                  ((_ to_fp 11 53) p1_ack!2611)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2612))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2613)
                                   ((_ to_fp 11 53) p0_ack!2616))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!2612))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2613)
                                   ((_ to_fp 11 53) p0_ack!2616))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!2612))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) p0_ack!2616))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2614)
                           ((_ to_fp 11 53) p1_ack!2611)))))
(let ((a!3 (fp.geq (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) step_size_ack!2615))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!3 #x3ff0000000000000 #xbff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.abs a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) p2_ack!2612))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!2616))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!2612)
                         a!1)
                 ((_ to_fp 11 53) p2_ack!2612))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2613)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) p0_ack!2616)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!2616))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) p2_ack!2612)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) p2_ack!2612))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!2616)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2614)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!2611)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!2612)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!2613)
                                   ((_ to_fp 11 53) p0_ack!2616)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) p0_ack!2616))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2614)
                                   ((_ to_fp 11 53) p1_ack!2611)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2614)
                           ((_ to_fp 11 53) p1_ack!2611)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!2612)
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
                           ((_ to_fp 11 53) p2_ack!2612))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) p0_ack!2616))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2614)
                           ((_ to_fp 11 53) p1_ack!2611))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!2613)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p0_ack!2616)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2614)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) p1_ack!2611)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) p2_ack!2612)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x0_ack!2613)
                                    ((_ to_fp 11 53) p0_ack!2616)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x0_ack!2613)
                            ((_ to_fp 11 53) p0_ack!2616)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!2 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) p2_ack!2612)
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
                                    ((_ to_fp 11 53) x1_ack!2614)
                                    ((_ to_fp 11 53) p1_ack!2611))))))
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
                           ((_ to_fp 11 53) step_size_ack!2615))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) step_size_ack!2615)))))
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
                                    ((_ to_fp 11 53) step_size_ack!2615))))))
  (FPCHECK_FDIV_ACCURACY a!6 a!12)))))))

(check-sat)
(exit)
