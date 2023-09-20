(declare-fun b_ack!10 () (_ BitVec 32))
(declare-fun a_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!11 b_ack!10)))
(assert (not (= b_ack!10 a_ack!11)))
(assert (not (= #x00000000 b_ack!10)))
(assert (not (bvult a_ack!11 (bvmul #x00000002 b_ack!10))))
(assert (not (bvule a_ack!11 #x000000aa)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!11)
  #x3ff0000000000000))

(check-sat)
(exit)
