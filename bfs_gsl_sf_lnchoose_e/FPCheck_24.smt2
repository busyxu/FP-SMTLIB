(declare-fun b_ack!60 () (_ BitVec 32))
(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!61 b_ack!60)))
(assert (not (= b_ack!60 a_ack!61)))
(assert (not (= #x00000000 b_ack!60)))
(assert (bvult a_ack!61 (bvmul #x00000002 b_ack!60)))
(assert (not (bvule a_ack!61 #x000000aa)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!61)
  #x3ff0000000000000))

(check-sat)
(exit)
