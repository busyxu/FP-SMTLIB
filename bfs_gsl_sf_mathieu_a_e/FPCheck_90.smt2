(declare-fun n_ack!365 () (_ BitVec 32))
(declare-fun a_ack!366 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!365 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!365 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!365 #x00000000)))
(assert (= #x00000000 n_ack!365))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!365)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!365)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!365)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!365))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!366))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4041000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040800000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4079a00000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x4079500000000000))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!3 a!5)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!6)
                           ((_ to_fp 11 53) #x7ff0000000000001)))))
  (FPCHECK_FSUB_ACCURACY
    a!7
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!4 a!8)
            ((_ to_fp 11 53) #x7ff0000000000001)))))))

(check-sat)
(exit)
