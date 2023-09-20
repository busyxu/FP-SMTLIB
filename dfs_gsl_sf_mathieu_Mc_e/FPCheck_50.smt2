(declare-fun q_ack!315 () (_ BitVec 64))
(declare-fun j_ack!316 () (_ BitVec 32))
(declare-fun n_ack!314 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!316 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!316)))
(assert (= #x00000000 (bvsrem n_ack!314 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!314 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!314 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!314 #x00000000)))
(assert (= #x00000000 n_ack!314))
(assert (fp.leq ((_ to_fp 11 53) q_ack!315) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!314))
(assert (FPCHECK_FSUB_UNDERFLOW
  #xc00ffdf3b645a1cb
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!314)
                  ((_ to_fp 11 53) #x4059000000000000))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!314)
                  ((_ to_fp 11 53) #x4059000000000000)))))

(check-sat)
(exit)
