(declare-fun q_ack!278 () (_ BitVec 64))
(declare-fun j_ack!279 () (_ BitVec 32))
(declare-fun n_ack!277 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!279 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!279)))
(assert (not (= #x00000000 n_ack!277)))
(assert (not (= #x00000000 (bvsrem n_ack!277 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!277 #x00000002))))
(assert (not (= #x00000000 n_ack!277)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!277 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!277 #x00000001)))
(assert (= #x00000001 n_ack!277))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!278) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!277))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!1)))

(check-sat)
(exit)
