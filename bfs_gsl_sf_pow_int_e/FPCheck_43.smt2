(declare-fun b_ack!188 () (_ BitVec 32))
(declare-fun a_ack!189 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt b_ack!188 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!189) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 b_ack!188) #x00000001))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!189))))

(check-sat)
(exit)
