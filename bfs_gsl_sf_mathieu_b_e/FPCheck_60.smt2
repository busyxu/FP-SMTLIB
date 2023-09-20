(declare-fun n_ack!261 () (_ BitVec 32))
(declare-fun a_ack!262 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (= #x00000000 (bvsrem n_ack!261 #x00000002))))
(assert (not (= #x00000000 n_ack!261)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!262) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!261 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!262) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!261) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!261))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!261))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!261))))
(assert (bvslt (bvmul #xffffffff n_ack!261) #x00000046))
(assert (let ((a!1 (bvadd #x00000001
                  (bvmul #x00000002
                         (bvadd #xffffffff (bvmul #xffffffff n_ack!261))))))
  (FPCHECK_FMUL_ACCURACY
    ((_ to_fp 11 53) roundNearestTiesToEven a!1)
    #x7ff0000000000001)))

(check-sat)
(exit)
