(declare-fun a_ack!645 () (_ BitVec 32))
(declare-fun c_ack!644 () (_ BitVec 64))
(declare-fun b_ack!643 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!645 #x00000000)))
(assert (not (= #x00000000 a_ack!645)))
(assert (not (= #x00000001 a_ack!645)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!644) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!644) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!645 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!644) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!645)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!644) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!643) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!643) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!645))
(assert (bvslt #x00000003 a_ack!645))
(assert (bvslt #x00000004 a_ack!645))
(assert (bvslt #x00000005 a_ack!645))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!643)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!643))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!643))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!643)))
                   ((_ to_fp 11 53) c_ack!644)))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!643))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!644)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!643))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!644)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!643))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!644)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!643))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!644))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!644))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!643))
                           ((_ to_fp 11 53) c_ack!644)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!643)))
                   a!4))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven a!8 a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!5
                            (fp.mul roundNearestTiesToEven a!6 a!9))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!643)))
                    a!9)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!643)))
                    a!10))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!10))
                            ((_ to_fp 11 53) #x4014000000000000)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.add roundNearestTiesToEven a!11 a!15)
    #x4018000000000000)))))))

(check-sat)
(exit)
