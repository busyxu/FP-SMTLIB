(declare-fun t_ack!10282 () (_ BitVec 64))
(declare-fun t1_ack!10283 () (_ BitVec 64))
(declare-fun h_ack!10286 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!10284 () (_ BitVec 64))
(declare-fun y1_ack!10285 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10283)
                    ((_ to_fp 11 53) t_ack!10282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10283)
                    ((_ to_fp 11 53) t_ack!10282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10283)
                ((_ to_fp 11 53) t_ack!10282))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10286)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10283)
                    ((_ to_fp 11 53) t_ack!10282)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10283)
                    ((_ to_fp 11 53) t_ack!10282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!10285))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!10284)
                                   ((_ to_fp 11 53) y0_ack!10284))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!10284)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!10286))
                           ((_ to_fp 11 53) y1_ack!10285)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10284))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!10286))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10284))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10284))
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!10285))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!10285)
                                   a!3))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!10285)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!10284)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!10286)
                                   a!4))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7)
                           a!8)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10284)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10286)
                                    a!4))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10284)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10286)
                                    a!4)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!10285)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10286)
                                    (fp.add roundNearestTiesToEven a!6 a!9))))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!10286)
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!12)))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fa887ad701404ac)
            ((_ to_fp 11 53) y1_ack!10285))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!10285) a!13)))))))))))

(check-sat)
(exit)
