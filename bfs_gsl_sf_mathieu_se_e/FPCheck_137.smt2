(declare-fun n_ack!599 () (_ BitVec 32))
(declare-fun a_ack!600 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!599 #x00000002))))
(assert (not (= #x00000000 n_ack!599)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!599 #x00000000))
(assert (not (= #x00000000 (bvsrem (bvmul #xffffffff n_ack!599) #x00000002))))
(assert (not (= #x00000000 (bvmul #xffffffff n_ack!599))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!599) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!599) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!599))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!599))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!599))))
(assert (bvslt (bvmul #xffffffff n_ack!599) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!599))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!600))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   a!2))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040800000000000)
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4079a00000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4022000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4079500000000000)))
                    ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   a!7)))
  (FPCHECK_FSUB_UNDERFLOW a!8 a!10)))))))

(check-sat)
(exit)
