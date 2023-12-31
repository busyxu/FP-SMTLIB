(declare-fun t_ack!968 () (_ BitVec 64))
(declare-fun t1_ack!965 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!967 () (_ BitVec 64))
(declare-fun y0_ack!966 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!965)
                                  ((_ to_fp 11 53) t_ack!968)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!965)
                       ((_ to_fp 11 53) t_ack!968)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!965)
                       ((_ to_fp 11 53) t_ack!968))
               ((_ to_fp 11 53) t_ack!968))
       ((_ to_fp 11 53) t1_ack!965)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!965)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!965)
                       ((_ to_fp 11 53) t_ack!968)))
       ((_ to_fp 11 53) t_ack!968)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!965)
                    ((_ to_fp 11 53) t_ack!968))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!965)
               ((_ to_fp 11 53) t_ack!968))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!965)
                ((_ to_fp 11 53) t_ack!968))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!965)
               ((_ to_fp 11 53) t_ack!968))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!965)
                                   ((_ to_fp 11 53) t_ack!968)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!965)
                 ((_ to_fp 11 53) t_ack!968)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!965)
                                  ((_ to_fp 11 53) t_ack!968)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!965)
                                   ((_ to_fp 11 53) t_ack!968)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!965)
                           ((_ to_fp 11 53) t_ack!968)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!967))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!966)
                                   ((_ to_fp 11 53) y0_ack!966))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!965)
                           ((_ to_fp 11 53) t_ack!968)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!966))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!966)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!967)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!966))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!966)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!967)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!966)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!967))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!967)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!965)
                           ((_ to_fp 11 53) t_ack!968))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7))))))
  (FPCHECK_FMUL_ACCURACY
    #x3fb8000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!967) a!8)))))))

(check-sat)
(exit)
