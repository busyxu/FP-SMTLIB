(declare-fun n_ack!246 () (_ BitVec 32))
(declare-fun a_ack!247 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!246 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!246 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!246 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!246 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!246 #x00000000)))
(assert (= #x00000000 n_ack!246))
(assert (fp.leq ((_ to_fp 11 53) a_ack!247) ((_ to_fp 11 53) #x4010000000000000)))
(assert (= #x00000000 n_ack!246))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!246)
          ((_ to_fp 11 53) #x4059000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!246)
          ((_ to_fp 11 53) #x4059000000000000))))

(check-sat)
(exit)
