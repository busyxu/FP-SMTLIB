(declare-fun b_ack!192 () (_ BitVec 32))
(declare-fun a_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt b_ack!192 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 b_ack!192) #x00000001))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!193))))

(check-sat)
(exit)
