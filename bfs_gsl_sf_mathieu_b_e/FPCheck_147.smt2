(declare-fun n_ack!609 () (_ BitVec 32))
(declare-fun a_ack!610 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!609 #x00000002))))
(assert (not (= #x00000000 n_ack!609)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!610) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!609 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!610) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!609) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!609))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!609))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!609))))
(assert (bvslt (bvmul #xffffffff n_ack!609) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!609))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404f800000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!3
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4093b00000000000)
                    a!2))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x40a6fe0000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                    ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))))

(check-sat)
(exit)
