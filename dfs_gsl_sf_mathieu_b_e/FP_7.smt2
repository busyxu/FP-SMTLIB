(declare-fun n_ack!155 () (_ BitVec 32))
(declare-fun a_ack!156 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!155 #x00000002)))
(assert (not (= #x00000000 n_ack!155)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!155 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!155 #x00000001)))
(assert (= #x00000002 n_ack!155))
(assert (fp.leq ((_ to_fp 11 53) a_ack!156) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!155 #x00000002)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!155)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!155)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010010624dd2f1b)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x4010010624dd2f1b))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!155)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!155)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4010010624dd2f1b)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010010624dd2f1b)
                         a!1))
         a!1)))

(check-sat)
(exit)
