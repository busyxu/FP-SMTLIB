(declare-fun q_ack!303 () (_ BitVec 64))
(declare-fun j_ack!304 () (_ BitVec 32))
(declare-fun n_ack!302 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!304 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!304)))
(assert (= #x00000000 (bvsrem n_ack!302 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!302 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!302 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!302 #x00000000)))
(assert (= #x00000000 n_ack!302))
(assert (fp.leq ((_ to_fp 11 53) q_ack!303) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!302))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!302)
          ((_ to_fp 11 53) #x4059000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!302)
          ((_ to_fp 11 53) #x4059000000000000))))

(check-sat)
(exit)
