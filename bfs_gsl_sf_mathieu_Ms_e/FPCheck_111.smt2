(declare-fun q_ack!713 () (_ BitVec 64))
(declare-fun j_ack!714 () (_ BitVec 32))
(declare-fun n_ack!712 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!713) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!714 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!714)))
(assert (not (= #x00000000 n_ack!712)))
(assert (not (= #x00000000 (bvsrem n_ack!712 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!712 #x00000002))))
(assert (not (= #x00000000 n_ack!712)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!713) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!712 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!713) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!712 #x00000001)))
(assert (= #x00000001 n_ack!712))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!713) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!712))))))
  (FPCHECK_FMUL_ACCURACY
    #x4079a00000000000
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
