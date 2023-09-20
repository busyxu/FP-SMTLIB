(declare-fun n_ack!304 () (_ BitVec 32))
(declare-fun a_ack!305 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!304 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!304 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!304 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!304 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!304 #x00000000)))
(assert (not (= #x00000000 n_ack!304)))
(assert (not (= #x00000001 n_ack!304)))
(assert (not (= #x00000002 n_ack!304)))
(assert (not (= #x00000003 n_ack!304)))
(assert (not (bvslt n_ack!304 #x00000046)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!304 n_ack!304))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul n_ack!304 n_ack!304)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!304 n_ack!304))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!304 n_ack!304)))))
(assert (not (= #x00000000 n_ack!304)))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 a_ack!305))

(check-sat)
(exit)
