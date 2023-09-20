(declare-fun q_ack!930 () (_ BitVec 64))
(declare-fun j_ack!931 () (_ BitVec 32))
(declare-fun n_ack!929 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!931 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!931)))
(assert (= #x00000000 (bvsrem n_ack!929 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!929 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!929 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!929 #x00000000)))
(assert (not (= #x00000000 n_ack!929)))
(assert (not (= #x00000001 n_ack!929)))
(assert (not (= #x00000002 n_ack!929)))
(assert (not (= #x00000003 n_ack!929)))
(assert (not (bvslt n_ack!929 #x00000046)))
(assert (not (= #x00000000 n_ack!929)))
(assert (not (= #x00000002 n_ack!929)))
(assert (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!929 #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4010000000000000))
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   (bvmul n_ack!929 n_ack!929))
                 ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x4010000000000000)))))
(assert (bvslt #x00000001 (bvadd #xffffffff (bvsdiv n_ack!929 #x00000002))))
(assert (bvslt #x00000002 (bvadd #xffffffff (bvsdiv n_ack!929 #x00000002))))
(assert (bvslt #x00000003 (bvadd #xffffffff (bvsdiv n_ack!929 #x00000002))))
(assert (bvslt #x00000004 (bvadd #xffffffff (bvsdiv n_ack!929 #x00000002))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4059000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4050000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) q_ack!930))
                           ((_ to_fp 11 53) q_ack!930))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul n_ack!929 n_ack!929))
                           ((_ to_fp 11 53) #x3f50624dd2f1a9fc)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) q_ack!930)
                                   ((_ to_fp 11 53) q_ack!930))
                           (fp.sub roundNearestTiesToEven a!5 a!6)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) q_ack!930)
                                   ((_ to_fp 11 53) q_ack!930))
                           a!7))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) q_ack!930)
                                   ((_ to_fp 11 53) q_ack!930))
                           a!8))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    a!1
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) q_ack!930)
                                    ((_ to_fp 11 53) q_ack!930))
                            a!9))))
  (FPCHECK_FDIV_ZERO
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) q_ack!930)
            ((_ to_fp 11 53) q_ack!930))
    a!10)))))))

(check-sat)
(exit)
