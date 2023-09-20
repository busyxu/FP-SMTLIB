(declare-fun a_ack!532 () (_ BitVec 32))
(declare-fun b_ack!530 () (_ BitVec 32))
(declare-fun c_ack!531 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!532 #x00000000)))
(assert (not (bvslt b_ack!530 a_ack!532)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt (bvadd #x00000001 b_ack!530) #x00000000))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!530) #x00000001)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!530)))
(assert (not (= #xfffffffe b_ack!530)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!531) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #xffffffff b_ack!530))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
