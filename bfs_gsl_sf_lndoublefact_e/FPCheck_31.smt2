(declare-fun a_ack!64 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvule a_ack!64 #x00000129)))
(assert (not (= #x00000000 (bvand a_ack!64 #x00000001))))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!64)
  #x4000000000000000))

(check-sat)
(exit)
