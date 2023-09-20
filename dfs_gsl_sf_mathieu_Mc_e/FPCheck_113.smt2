(declare-fun q_ack!759 () (_ BitVec 64))
(declare-fun j_ack!760 () (_ BitVec 32))
(declare-fun n_ack!758 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!759) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!760 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!760)))
(assert (= #x00000000 (bvsrem n_ack!758 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!758 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!759) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!758 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!759) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!758 #x00000000)))
(assert (not (= #x00000000 n_ack!758)))
(assert (not (= #x00000001 n_ack!758)))
(assert (not (= #x00000002 n_ack!758)))
(assert (not (= #x00000003 n_ack!758)))
(assert (not (bvslt n_ack!758 #x00000046)))
(assert (not (= #x00000000 n_ack!758)))
(assert (not (= #x00000002 n_ack!758)))
(assert (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!758 #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!758 n_ack!758))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4010000000000000))
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   (bvmul n_ack!758 n_ack!758))
                 ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!758 n_ack!758))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!758 n_ack!758))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x4010000000000000)))))
(assert (bvslt #x00000001 (bvadd #xffffffff (bvsdiv n_ack!758 #x00000002))))
(assert (bvslt #x00000002 (bvadd #xffffffff (bvsdiv n_ack!758 #x00000002))))
(assert (bvslt #x00000003 (bvadd #xffffffff (bvsdiv n_ack!758 #x00000002))))
(assert (FPCHECK_FMUL_ACCURACY q_ack!759 q_ack!759))

(check-sat)
(exit)
