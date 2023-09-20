(declare-fun n_ack!459 () (_ BitVec 32))
(declare-fun a_ack!460 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!459 #x00000002)))
(assert (not (= #x00000000 n_ack!459)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!459 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!459 #x00000001)))
(assert (not (= #x00000001 n_ack!459)))
(assert (not (= #x00000002 n_ack!459)))
(assert (not (= #x00000003 n_ack!459)))
(assert (bvslt n_ack!459 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!459))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fd0000000000000)
            (fp.add roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4022000000000000)))
    #x7ff0000000000001))))

(check-sat)
(exit)
