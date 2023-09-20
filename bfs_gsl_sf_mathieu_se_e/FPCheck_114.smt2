(declare-fun n_ack!507 () (_ BitVec 32))
(declare-fun a_ack!508 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!507 #x00000002))))
(assert (not (= #x00000000 n_ack!507)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!508) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!507 #x00000000))
(assert (not (= #x00000000 (bvsrem (bvmul #xffffffff n_ack!507) #x00000002))))
(assert (not (= #x00000000 (bvmul #xffffffff n_ack!507))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!508) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!507) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!508) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!507) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!507))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!507))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!507))))
(assert (bvslt (bvmul #xffffffff n_ack!507) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!507))))))
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
                   ((_ to_fp 11 53) #x4014000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!508))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   a!2))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4022000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_ACCURACY
    (fp.sub roundNearestTiesToEven
            a!3
            (fp.div roundNearestTiesToEven
                    a!4
                    ((_ to_fp 11 53) #x7ff0000000000001)))
    a!7))))))

(check-sat)
(exit)
