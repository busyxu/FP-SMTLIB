(declare-fun n_ack!260 () (_ BitVec 32))
(declare-fun a_ack!261 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!260 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!261) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!260 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!261) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!260 #x00000000)))
(assert (not (= #x00000000 n_ack!260)))
(assert (not (= #x00000001 n_ack!260)))
(assert (not (= #x00000002 n_ack!260)))
(assert (not (= #x00000003 n_ack!260)))
(assert (not (bvslt n_ack!260 #x00000046)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!260 n_ack!260))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul n_ack!260 n_ack!260)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!260 n_ack!260))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!260 n_ack!260)))))
(assert (not (= #x00000000 n_ack!260)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) a_ack!261)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!261))
                           ((_ to_fp 11 53) a_ack!261))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!261)))))
  (fp.eq a!1 ((_ to_fp 11 53) a_ack!261))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!261))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!261))
                           ((_ to_fp 11 53) a_ack!261))
                   ((_ to_fp 11 53) a_ack!261))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 ((_ to_fp 11 53) a_ack!261)))))
(assert (not (= #x00000002 n_ack!260)))
(assert (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!260 #x00000002))))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!261 a_ack!261))

(check-sat)
(exit)
