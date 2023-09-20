(declare-fun n_ack!203 () (_ BitVec 32))
(declare-fun a_ack!204 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!203 #x00000002)))
(assert (not (= #x00000000 n_ack!203)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!203 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!203 #x00000002)))
(assert (not (= #x00000000 n_ack!203)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!203 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!203 #x00000001)))
(assert (not (= #x00000001 n_ack!203)))
(assert (not (= #x00000002 n_ack!203)))
(assert (not (= #x00000003 n_ack!203)))
(assert (not (bvslt n_ack!203 #x00000046)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!203 n_ack!203))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul n_ack!203 n_ack!203)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!203 n_ack!203))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!203 n_ack!203)))))
(assert (not (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!203 #x00000002)))))

(check-sat)
(exit)
