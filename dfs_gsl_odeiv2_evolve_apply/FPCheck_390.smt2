(declare-fun t_ack!3655 () (_ BitVec 64))
(declare-fun t1_ack!3656 () (_ BitVec 64))
(declare-fun h_ack!3659 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3657 () (_ BitVec 64))
(declare-fun y1_ack!3658 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3656)
                    ((_ to_fp 11 53) t_ack!3655))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3656)
               ((_ to_fp 11 53) t_ack!3655))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3659) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3656)
                ((_ to_fp 11 53) t_ack!3655))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3659)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3656)
               ((_ to_fp 11 53) t_ack!3655))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!3658))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!3657)
                                   ((_ to_fp 11 53) y0_ack!3657))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!3656)
                           ((_ to_fp 11 53) t_ack!3655)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3657))
                           a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3657))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!3657))
                           a!1)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!3657)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!3658)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!3657)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!3658)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!3657)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!3658))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!3658))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3658)
                                   a!4))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3658)
                                    a!4))
                    (fp.sub roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!3657)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!3656)
                                   ((_ to_fp 11 53) t_ack!3655))
                           a!5)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!3656)
                            ((_ to_fp 11 53) t_ack!3655))
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb0000000000000)
                                    (fp.sub roundNearestTiesToEven a!8 a!10))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!3658)
                                    a!11))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!6 a!6)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!6)
                            a!12))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!3658)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!3656)
                                    ((_ to_fp 11 53) t_ack!3655))
                            (fp.add roundNearestTiesToEven a!2 a!13)))))
  (FPCHECK_FMUL_OVERFLOW #x3fd8d28195fa13c2 a!14)))))))))

(check-sat)
(exit)
