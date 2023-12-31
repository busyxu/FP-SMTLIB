(declare-fun a_ack!157 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!157))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!157))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!157))
                           (fp.abs ((_ to_fp 11 53) a_ack!157))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c870ef54646d497))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ca14b37f4b51f71)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbca14b37f4b51f71))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c870ef54646d497)))
                   a!6))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                           (fp.abs a!5))
                   ((_ to_fp 11 53) #x3cb87fe49aab41e0)))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!8)
                                    a!5)
                            ((_ to_fp 11 53) #x3cb87fe49aab41e0)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven a!7 a!9)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!10) (fp.abs a!8))
            ((_ to_fp 11 53) #x3cd14b37f4b51f71))))))))))

(check-sat)
(exit)
