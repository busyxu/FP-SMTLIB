(declare-fun n_ack!353 () (_ BitVec 32))
(declare-fun a_ack!354 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!353 #x00000002))))
(assert (not (= #x00000000 n_ack!353)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!354) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!353 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!354) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!353) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!353))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!353))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!353))))
(assert (bvslt (bvmul #xffffffff n_ack!353) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!353))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (FPCHECK_FDIV_UNDERFLOW a!2 #x7ff0000000000001))))

(check-sat)
(exit)
