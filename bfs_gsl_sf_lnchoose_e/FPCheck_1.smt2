(declare-fun b_ack!8 () (_ BitVec 32))
(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult a_ack!9 b_ack!8)))
(assert (not (= b_ack!8 a_ack!9)))
(assert (not (= #x00000000 b_ack!8)))
(assert (not (bvult a_ack!9 (bvmul #x00000002 b_ack!8))))
(assert (not (bvule a_ack!9 #x000000aa)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!9)
  #x3ff0000000000000))

(check-sat)
(exit)
