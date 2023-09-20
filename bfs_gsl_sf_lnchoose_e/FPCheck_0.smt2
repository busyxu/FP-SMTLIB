(declare-fun b_ack!6 () (_ BitVec 32))
(declare-fun a_ack!7 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!7 b_ack!6)))
(assert (not (= b_ack!6 a_ack!7)))
(assert (not (= #x00000000 b_ack!6)))
(assert (not (bvult a_ack!7 (bvmul #x00000002 b_ack!6))))
(assert (not (bvule a_ack!7 #x000000aa)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!7)
  #x3ff0000000000000))

(check-sat)
(exit)
