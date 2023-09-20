(declare-fun q_ack!519 () (_ BitVec 64))
(declare-fun j_ack!520 () (_ BitVec 32))
(declare-fun n_ack!518 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!519) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!520 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!520)))
(assert (= #x00000000 (bvsrem n_ack!518 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!518 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!519) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!518 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!519) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!518 #x00000000)))
(assert (not (= #x00000000 n_ack!518)))
(assert (not (= #x00000001 n_ack!518)))
(assert (not (= #x00000002 n_ack!518)))
(assert (not (= #x00000003 n_ack!518)))
(assert (not (bvslt n_ack!518 #x00000046)))
(assert (not (= #x00000000 n_ack!518)))
(assert (not (= #x00000002 n_ack!518)))
(assert (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!518 #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!518 n_ack!518))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4010000000000000))
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   (bvmul n_ack!518 n_ack!518))
                 ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!518 n_ack!518))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!518 n_ack!518))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x4010000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!518 n_ack!518))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) q_ack!519))
                           ((_ to_fp 11 53) q_ack!519))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!518 n_ack!518))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) q_ack!519)
            ((_ to_fp 11 53) q_ack!519))
    (fp.sub roundNearestTiesToEven a!1 a!2))))

(check-sat)
(exit)
