(declare-fun q_ack!456 () (_ BitVec 64))
(declare-fun j_ack!457 () (_ BitVec 32))
(declare-fun n_ack!455 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!457 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!457)))
(assert (= #x00000000 (bvsrem n_ack!455 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!455 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!455 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!455 #x00000000)))
(assert (= #x00000000 n_ack!455))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!456) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd0000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!455)))))

(check-sat)
(exit)
