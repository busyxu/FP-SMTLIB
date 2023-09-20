(declare-fun q_ack!462 () (_ BitVec 64))
(declare-fun j_ack!463 () (_ BitVec 32))
(declare-fun n_ack!461 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!463 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!463)))
(assert (= #x00000000 (bvsrem n_ack!461 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!461 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!461 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!461 #x00000000)))
(assert (= #x00000000 n_ack!461))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!462) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd0000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!461)))))

(check-sat)
(exit)
