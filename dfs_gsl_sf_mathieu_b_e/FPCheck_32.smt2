(declare-fun n_ack!133 () (_ BitVec 32))
(declare-fun a_ack!134 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!133 #x00000002)))
(assert (not (= #x00000000 n_ack!133)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!133 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!133 #x00000001)))
(assert (= #x00000002 n_ack!133))
(assert (fp.leq ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!133 #x00000002)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!133)
          ((_ to_fp 11 53) #x4059000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven n_ack!133)
          ((_ to_fp 11 53) #x4059000000000000))))

(check-sat)
(exit)
