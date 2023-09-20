(declare-fun a_ack!567 () (_ BitVec 32))
(declare-fun c_ack!566 () (_ BitVec 64))
(declare-fun b_ack!565 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!567 #x00000000)))
(assert (not (= #x00000000 a_ack!567)))
(assert (not (= #x00000001 a_ack!567)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!567 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!567)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!565) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!565) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!567))
(assert (bvslt #x00000003 a_ack!567))
(assert (bvslt #x00000004 a_ack!567))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!565))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!565))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!566)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!565)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!565))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!565)))
                   ((_ to_fp 11 53) c_ack!566)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!565))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!566)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!565))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!566))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!565))
                           ((_ to_fp 11 53) c_ack!566))))
      (a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!566))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!3 a!6))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!565)))
                    a!6)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!565)))
                   a!7))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!7))
                            ((_ to_fp 11 53) #x4010000000000000)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.add roundNearestTiesToEven a!8 a!12)
    #x4014000000000000))))))

(check-sat)
(exit)
