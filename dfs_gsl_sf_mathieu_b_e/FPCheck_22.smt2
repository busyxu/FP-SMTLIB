(declare-fun n_ack!93 () (_ BitVec 32))
(declare-fun a_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 (bvsrem n_ack!93 #x00000002)))
(assert (not (= #x00000000 n_ack!93)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!93 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!93 #x00000001)))
(assert (= #x00000002 n_ack!93))
(assert (fp.leq ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvslt #x00000000 (bvadd #xffffffff (bvsdiv n_ack!93 #x00000002)))))
(assert (FPCHECK_FADD_ACCURACY
  #x0000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul n_ack!93 n_ack!93))))

(check-sat)
(exit)
