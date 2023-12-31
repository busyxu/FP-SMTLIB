(declare-fun q_ack!197 () (_ BitVec 64))
(declare-fun j_ack!198 () (_ BitVec 32))
(declare-fun n_ack!196 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!198 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!198)))
(assert (not (= #x00000000 n_ack!196)))
(assert (not (= #x00000000 (bvsrem n_ack!196 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!196 #x00000002))))
(assert (not (= #x00000000 n_ack!196)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!196 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!196 #x00000001)))
(assert (= #x00000003 n_ack!196))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!197) ((_ to_fp 11 53) #x4019000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!196))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 a!1)
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
