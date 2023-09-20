(declare-fun q_ack!432 () (_ BitVec 64))
(declare-fun j_ack!433 () (_ BitVec 32))
(declare-fun n_ack!431 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!433 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!433)))
(assert (= #x00000000 (bvsrem n_ack!431 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!431 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!431 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!431 #x00000000)))
(assert (not (= #x00000000 n_ack!431)))
(assert (not (= #x00000001 n_ack!431)))
(assert (not (= #x00000002 n_ack!431)))
(assert (not (= #x00000003 n_ack!431)))
(assert (not (bvslt n_ack!431 #x00000046)))
(assert (not (= #x00000000 n_ack!431)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) q_ack!432))
          ((_ to_fp 11 53) q_ack!432))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!431 n_ack!431))
          ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))

(check-sat)
(exit)
