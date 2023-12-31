(declare-fun b_ack!310 () (_ BitVec 32))
(declare-fun a_ack!311 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!311 b_ack!310)))
(assert (not (= b_ack!310 a_ack!311)))
(assert (not (= #x00000000 b_ack!310)))
(assert (not (bvule a_ack!311 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 b_ack!310) a_ack!311)))
(assert (not (bvult (bvsub a_ack!311 b_ack!310) #x00000040)))
(assert (not (bvult a_ack!311 b_ack!310)))
(assert (not (= b_ack!310 a_ack!311)))
(assert (not (= #x00000000 b_ack!310)))
(assert (bvult a_ack!311 (bvmul #x00000002 b_ack!310)))
(assert (not (bvule a_ack!311 #x000000aa)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!311)
  #x3ff0000000000000))

(check-sat)
(exit)
