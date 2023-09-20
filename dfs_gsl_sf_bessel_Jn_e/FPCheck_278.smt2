(declare-fun a_ack!777 () (_ BitVec 32))
(declare-fun b_ack!776 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!777 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!776) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!777))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!776))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!776))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!776))
                           (fp.abs ((_ to_fp 11 53) b_ack!776))))))
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
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!8)
                            a!5)
                    ((_ to_fp 11 53) #x3cb87fe49aab41e0))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!10))
                            (fp.abs a!8))
                    ((_ to_fp 11 53) #x3cd14b37f4b51f71)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!8)
                    ((_ to_fp 11 53) #xbcd14b37f4b51f71))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!12))
                            (fp.abs a!10))
                    ((_ to_fp 11 53) #x3ce8c5117a7e165e)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!12)
                            a!10)
                    ((_ to_fp 11 53) #x3ce8c5117a7e165e))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!14))
                            (fp.abs a!12))
                    ((_ to_fp 11 53) #x3d025463f95d4dfe)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!14)
                            a!12)
                    ((_ to_fp 11 53) #xbd025463f95d4dfe))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!7 a!9)
                                    a!11)
                            a!13)
                    a!15))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!17))
                            (fp.abs a!14))
                    ((_ to_fp 11 53) #x3d1c4576f98a17e6)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!17)
                            a!14)
                    ((_ to_fp 11 53) #x3d1c4576f98a17e6))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!19))
                            (fp.abs a!17))
                    ((_ to_fp 11 53) #x3d36c62e10210508)))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!19)
                                    a!17)
                            ((_ to_fp 11 53) #xbd36c62e10210508)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!16 a!18)
            a!20)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!21) (fp.abs a!19))
            ((_ to_fp 11 53) #x3d534962e767fe90)))))))))))))))

(check-sat)
(exit)
