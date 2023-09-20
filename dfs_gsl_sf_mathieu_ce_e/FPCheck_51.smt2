(declare-fun n_ack!258 () (_ BitVec 32))
(declare-fun a_ack!259 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!258 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!258 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!258 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!258 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!258 #x00000000)))
(assert (= #x00000000 n_ack!258))
(assert (fp.leq ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!258))
(assert (FPCHECK_FSUB_UNDERFLOW
  #xbff768dd3d3bdcea
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!258)
                  ((_ to_fp 11 53) #x4059000000000000))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!258)
                  ((_ to_fp 11 53) #x4059000000000000)))))

(check-sat)
(exit)
