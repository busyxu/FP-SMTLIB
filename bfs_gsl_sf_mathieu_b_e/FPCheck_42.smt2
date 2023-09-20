(declare-fun n_ack!185 () (_ BitVec 32))
(declare-fun a_ack!186 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!185 #x00000002))))
(assert (not (= #x00000000 n_ack!185)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!185 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!185) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!185))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!185))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!185))))
(assert (bvslt (bvmul #xffffffff n_ack!185) #x00000046))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ffb333333333333
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #xffffffff n_ack!185))))

(check-sat)
(exit)
