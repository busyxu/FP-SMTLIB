(declare-fun n_ack!415 () (_ BitVec 32))
(declare-fun a_ack!416 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 (bvsrem n_ack!415 #x00000002)))
(assert (not (= #x00000000 n_ack!415)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!416) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!415 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!416) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!415 #x00000001)))
(assert (not (= #x00000001 n_ack!415)))
(assert (not (= #x00000002 n_ack!415)))
(assert (not (= #x00000003 n_ack!415)))
(assert (bvslt n_ack!415 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!415))))))
  (FPCHECK_FMUL_ACCURACY
    #x4041000000000000
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
