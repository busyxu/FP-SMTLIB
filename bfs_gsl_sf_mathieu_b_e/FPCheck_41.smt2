(declare-fun n_ack!181 () (_ BitVec 32))
(declare-fun a_ack!182 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (= #x00000000 (bvsrem n_ack!181 #x00000002))))
(assert (not (= #x00000000 n_ack!181)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!181 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!181) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!181))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!181))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!181))))
(assert (bvslt (bvmul #xffffffff n_ack!181) #x00000046))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ffb333333333333
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #xffffffff n_ack!181))))

(check-sat)
(exit)
