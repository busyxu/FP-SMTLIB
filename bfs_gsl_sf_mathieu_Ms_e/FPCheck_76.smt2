(declare-fun q_ack!503 () (_ BitVec 64))
(declare-fun j_ack!504 () (_ BitVec 32))
(declare-fun n_ack!502 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!504 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!504)))
(assert (not (= #x00000000 n_ack!502)))
(assert (not (= #x00000000 (bvsrem n_ack!502 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!502 #x00000002))))
(assert (not (= #x00000000 n_ack!502)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!502 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!502 #x00000001)))
(assert (= #x00000001 n_ack!502))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!503) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!502))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd0000000000000)
                    a!1)
            (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    ((_ to_fp 11 53) #x4008000000000000)))
    #x7ff0000000000001)))

(check-sat)
(exit)
