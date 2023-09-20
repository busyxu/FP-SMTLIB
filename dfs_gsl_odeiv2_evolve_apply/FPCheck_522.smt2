(declare-fun t_ack!4955 () (_ BitVec 64))
(declare-fun t1_ack!4956 () (_ BitVec 64))
(declare-fun h_ack!4959 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4958 () (_ BitVec 64))
(declare-fun y0_ack!4957 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4956)
                    ((_ to_fp 11 53) t_ack!4955))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4956)
               ((_ to_fp 11 53) t_ack!4955))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4959) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4956)
                ((_ to_fp 11 53) t_ack!4955))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4959)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4956)
               ((_ to_fp 11 53) t_ack!4955))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!4958))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!4957)
                                   ((_ to_fp 11 53) y0_ack!4957))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!4956)
                           ((_ to_fp 11 53) t_ack!4955)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb1b04260f85fe2)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4957))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4957))
                           a!1)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4957)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!4958)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!4957))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4957)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!4958)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!4957)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!4958)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!4957))
                            a!1))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4958)
                                   a!6))
                   (fp.sub roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!4958))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4958)
                                    a!6)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!4956)
                           ((_ to_fp 11 53) t_ack!4955))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!5 a!8)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4957)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4956)
                                    ((_ to_fp 11 53) t_ack!4955))
                            a!13))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa0000000000000)
                            ((_ to_fp 11 53) y1_ack!4958))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4958)
                                    a!9))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!4958)
                                    a!9))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!14 a!14)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!4957)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4956)
                                    ((_ to_fp 11 53) t_ack!4955))
                            a!10)))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!14)
                            a!15))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!4958)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!4956)
                                    ((_ to_fp 11 53) t_ack!4955))
                            (fp.add roundNearestTiesToEven a!12 a!16)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!17)
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!11 a!11)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FADD_OVERFLOW
    a!2
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #xbfe44bc269b358dd) a!18)))))))))))

(check-sat)
(exit)
