(declare-fun x1_ack!2044 () (_ BitVec 64))
(declare-fun x0_ack!2051 () (_ BitVec 64))
(declare-fun x2_ack!2045 () (_ BitVec 64))
(declare-fun b_ack!2050 () (_ BitVec 64))
(declare-fun a_ack!2049 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2046 () (_ BitVec 64))
(declare-fun y1_ack!2047 () (_ BitVec 64))
(declare-fun y2_ack!2048 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2051) ((_ to_fp 11 53) x1_ack!2044)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2044) ((_ to_fp 11 53) x2_ack!2045)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2044)
                       ((_ to_fp 11 53) x0_ack!2051))
               ((_ to_fp 11 53) x0_ack!2051))
       ((_ to_fp 11 53) x1_ack!2044)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2044)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2044)
                       ((_ to_fp 11 53) x0_ack!2051)))
       ((_ to_fp 11 53) x0_ack!2051)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2045)
                       ((_ to_fp 11 53) x1_ack!2044))
               ((_ to_fp 11 53) x1_ack!2044))
       ((_ to_fp 11 53) x2_ack!2045)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2045)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2045)
                       ((_ to_fp 11 53) x1_ack!2044)))
       ((_ to_fp 11 53) x1_ack!2044)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2044)
                    ((_ to_fp 11 53) x0_ack!2051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2045)
                    ((_ to_fp 11 53) x1_ack!2044))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2049) ((_ to_fp 11 53) b_ack!2050))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2049) ((_ to_fp 11 53) x0_ack!2051))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2050) ((_ to_fp 11 53) x2_ack!2045))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2049) ((_ to_fp 11 53) b_ack!2050))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2049) ((_ to_fp 11 53) x0_ack!2051))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2049) ((_ to_fp 11 53) x1_ack!2044))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2050) ((_ to_fp 11 53) x0_ack!2051)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2044)
                    ((_ to_fp 11 53) x0_ack!2051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!2050)
                                  ((_ to_fp 11 53) x0_ack!2051)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2050)
                           ((_ to_fp 11 53) x0_ack!2051)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2050)
                 ((_ to_fp 11 53) x0_ack!2051)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!2050)
                                  ((_ to_fp 11 53) x0_ack!2051)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2050)
                           ((_ to_fp 11 53) x0_ack!2051)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2050)
                 ((_ to_fp 11 53) x0_ack!2051)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2048)
                           ((_ to_fp 11 53) y1_ack!2047))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2045)
                                   ((_ to_fp 11 53) x1_ack!2044)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2047)
                           ((_ to_fp 11 53) y0_ack!2046))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2044)
                                   ((_ to_fp 11 53) x0_ack!2051)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2045)
                                   ((_ to_fp 11 53) x1_ack!2044))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2044)
                                   ((_ to_fp 11 53) x0_ack!2051)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2049)
                           ((_ to_fp 11 53) x0_ack!2051))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2050)
                           ((_ to_fp 11 53) x0_ack!2051))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2049)
                                   ((_ to_fp 11 53) x0_ack!2051))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2049)
                                   ((_ to_fp 11 53) x0_ack!2051)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2050)
                                   ((_ to_fp 11 53) x0_ack!2051))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2049)
                                    ((_ to_fp 11 53) x0_ack!2051))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2050)
                                    ((_ to_fp 11 53) x0_ack!2051))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2044)
                                   ((_ to_fp 11 53) x0_ack!2051))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!2044)
                                    ((_ to_fp 11 53) x0_ack!2051))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2047)
                                   ((_ to_fp 11 53) y0_ack!2046))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2044)
                                   ((_ to_fp 11 53) x0_ack!2051)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!2046)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10))
                    a!12)))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2050)
                    ((_ to_fp 11 53) a_ack!2049))
            a!13)))))))))

(check-sat)
(exit)
