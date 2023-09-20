(declare-fun n_ack!585 () (_ BitVec 32))
(declare-fun a_ack!586 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!585 #x00000002)))
(assert (not (= #x00000000 n_ack!585)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!585 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!585 #x00000002)))
(assert (not (= #x00000000 n_ack!585)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!585 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!585 #x00000001)))
(assert (not (= #x00000001 n_ack!585)))
(assert (not (= #x00000002 n_ack!585)))
(assert (not (= #x00000003 n_ack!585)))
(assert (bvslt n_ack!585 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!585))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!586))
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff0000000000001)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   a!4)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4041000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040800000000000)
                                   a!4)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4079a00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   ((_ to_fp 11 53) #x4079500000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!2 a!3)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           a!7)
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_UNDERFLOW a!6 a!8))))))

(check-sat)
(exit)
