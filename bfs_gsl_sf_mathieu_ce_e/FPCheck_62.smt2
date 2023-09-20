(declare-fun n_ack!303 () (_ BitVec 32))
(declare-fun a_ack!304 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!303 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!303 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!303 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!303 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!303 #x00000000)))
(assert (= #x00000000 n_ack!303))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!303)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!303)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!303)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!303))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   ((_ to_fp 11 53) a_ack!304))
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
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_UNDERFLOW a!3 a!5))))

(check-sat)
(exit)
