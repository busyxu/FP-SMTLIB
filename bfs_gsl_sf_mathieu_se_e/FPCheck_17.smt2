(declare-fun n_ack!89 () (_ BitVec 32))
(declare-fun a_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!89 #x00000002)))
(assert (not (= #x00000000 n_ack!89)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!89 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!89 #x00000002)))
(assert (not (= #x00000000 n_ack!89)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!89 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!89 #x00000001)))
(assert (= #x00000002 n_ack!89))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!89))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            (fp.mul roundNearestTiesToEven a!1 a!1))
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
