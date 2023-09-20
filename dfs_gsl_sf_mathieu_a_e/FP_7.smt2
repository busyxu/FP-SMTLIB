(declare-fun n_ack!176 () (_ BitVec 32))
(declare-fun a_ack!177 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!176 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!176 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!176 #x00000000)))
(assert (= #x00000000 n_ack!176))
(assert (fp.leq ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!176))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!176)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!176)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbff768dd3d3bdcea)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbff768dd3d3bdcea))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!176)
                           ((_ to_fp 11 53) #x4059000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven n_ack!176)
                           ((_ to_fp 11 53) #x4059000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbff768dd3d3bdcea)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbff768dd3d3bdcea)
                         a!1))
         a!1)))

(check-sat)
(exit)
