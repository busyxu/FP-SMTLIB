(declare-fun n_ack!349 () (_ BitVec 32))
(declare-fun a_ack!350 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!349 #x00000002)))
(assert (not (= #x00000000 n_ack!349)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!350) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!349 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!349 #x00000002)))
(assert (not (= #x00000000 n_ack!349)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!350) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!349 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!350) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!349 #x00000001)))
(assert (not (= #x00000001 n_ack!349)))
(assert (not (= #x00000002 n_ack!349)))
(assert (not (= #x00000003 n_ack!349)))
(assert (bvslt n_ack!349 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!349))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    ((_ to_fp 11 53) a_ack!350))
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x7ff0000000000001)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fc0000000000000)
            (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
