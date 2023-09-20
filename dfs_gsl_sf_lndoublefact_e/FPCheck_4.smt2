(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvule a_ack!9 #x00000129)))
(assert (= #x00000000 (bvand a_ack!9 #x00000001)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!9)))

(check-sat)
(exit)
