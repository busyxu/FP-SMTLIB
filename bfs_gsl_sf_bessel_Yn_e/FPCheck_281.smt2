(declare-fun a_ack!973 () (_ BitVec 32))
(declare-fun b_ack!972 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!973 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!973) #x00000001))))
(assert (not (= #x00000000 a_ack!973)))
(assert (not (= #xffffffff a_ack!973)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!972) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!972) ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd0000000000000)
          ((_ to_fp 11 53) b_ack!972))
  b_ack!972))

(check-sat)
(exit)
