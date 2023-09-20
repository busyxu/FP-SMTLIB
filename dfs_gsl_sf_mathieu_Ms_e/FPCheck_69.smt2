(declare-fun q_ack!446 () (_ BitVec 64))
(declare-fun j_ack!447 () (_ BitVec 32))
(declare-fun n_ack!445 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!447 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!447)))
(assert (not (= #x00000000 n_ack!445)))
(assert (not (= #x00000000 (bvsrem n_ack!445 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!445 #x00000002))))
(assert (not (= #x00000000 n_ack!445)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!445 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!445 #x00000001)))
(assert (= #x00000001 n_ack!445))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!446) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!445))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd0000000000000
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4022000000000000))))))

(check-sat)
(exit)
