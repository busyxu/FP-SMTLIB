(declare-fun a_ack!882 () (_ BitVec 32))
(declare-fun b_ack!881 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!882 #xffffffff)))
(assert (not (= #xffffffff a_ack!882)))
(assert (not (= #x00000000 a_ack!882)))
(assert (not (= #x00000001 a_ack!882)))
(assert (= #x00000002 a_ack!882))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!881) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!881) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!881) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!881) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!881)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c32725dd1d243ac)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c6bab8cbabb6581))
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (fp.eq a!5 ((_ to_fp 11 53) #x3c6bab8cbabb6581))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!881)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c32725dd1d243ac)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c6bab8cbabb6581))
                   ((_ to_fp 11 53) #x3c6bab8cbabb6581))))
  (fp.eq a!5
         (fp.sub roundNearestTiesToEven
                 a!4
                 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!881)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c32725dd1d243ac))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c32725dd1d243ac)))))
  (FPCHECK_FADD_OVERFLOW
    a!4
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    (fp.abs a!5)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x3c6bab8cbabb6581))))))))

(check-sat)
(exit)
