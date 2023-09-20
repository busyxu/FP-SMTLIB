(declare-fun q_ack!324 () (_ BitVec 64))
(declare-fun j_ack!325 () (_ BitVec 32))
(declare-fun n_ack!323 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!325 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!325)))
(assert (= #x00000000 (bvsrem n_ack!323 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!323 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!323 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!323 #x00000000)))
(assert (= #x00000000 n_ack!323))
(assert (fp.leq ((_ to_fp 11 53) q_ack!324) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!323))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!323)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!323)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc00ffdf3b645a1cb)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xc00ffdf3b645a1cb))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!323)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!323)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #xc00ffdf3b645a1cb)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc00ffdf3b645a1cb)
                         a!1))
         a!1)))

(check-sat)
(exit)
