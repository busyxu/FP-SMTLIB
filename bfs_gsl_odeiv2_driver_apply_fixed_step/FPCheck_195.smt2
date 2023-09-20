(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!701 () (_ BitVec 64))
(declare-fun y1_ack!702 () (_ BitVec 64))
(declare-fun h_ack!703 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!701)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!703)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) y1_ack!702))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!702))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!701)
                                   ((_ to_fp 11 53) y0_ack!701))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!701)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!703))
                           ((_ to_fp 11 53) y1_ack!702)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!703))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!701))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!703)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!702)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!702)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!701)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) h_ack!703))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!702)
                                   a!3)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) h_ack!703))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!703)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!702)
                                   a!7))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!702)
                                    a!7))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!9)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!703)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!9)
                            a!10))))
  (FPCHECK_FADD_OVERFLOW
    a!8
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!703)
                    ((_ to_fp 11 53) #x4018000000000000))
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!702) a!11))))))))))

(check-sat)
(exit)
