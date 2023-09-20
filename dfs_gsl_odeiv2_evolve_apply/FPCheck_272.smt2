(declare-fun t_ack!2533 () (_ BitVec 64))
(declare-fun t1_ack!2534 () (_ BitVec 64))
(declare-fun h_ack!2537 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!2536 () (_ BitVec 64))
(declare-fun y0_ack!2535 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2534)
                    ((_ to_fp 11 53) t_ack!2533))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2534)
               ((_ to_fp 11 53) t_ack!2533))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2537) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2534)
                ((_ to_fp 11 53) t_ack!2533))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2537)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2534)
               ((_ to_fp 11 53) t_ack!2533))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!2536))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!2535)
                                   ((_ to_fp 11 53) y0_ack!2535))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!2534)
                           ((_ to_fp 11 53) t_ack!2533)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa3333333333333)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2535))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2535))
                           a!1)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2535)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!2536)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!2535))
                           a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2535)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!2536)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!2535)
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) y1_ack!2536)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!2535))
                            a!1))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2536)
                                   a!6))
                   (fp.sub roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!2536))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2536)
                                    a!6)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!2534)
                           ((_ to_fp 11 53) t_ack!2533))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!5 a!8)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2535)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2534)
                                    ((_ to_fp 11 53) t_ack!2533))
                            a!13))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa0000000000000)
                            ((_ to_fp 11 53) y1_ack!2536))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2536)
                                    a!9))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!2536)
                                    a!9))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!14 a!14)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!2535)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2534)
                                    ((_ to_fp 11 53) t_ack!2533))
                            a!10)))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!14)
                            a!15))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!2536)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!2534)
                                    ((_ to_fp 11 53) t_ack!2533))
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
  (FPCHECK_FADD_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc8000000000000) a!18)))))))))))

(check-sat)
(exit)
